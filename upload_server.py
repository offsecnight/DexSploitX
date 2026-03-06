#!/usr/bin/env python3
import os
from http.server import HTTPServer, BaseHTTPRequestHandler
import cgi
import threading

class UploadHandler(BaseHTTPRequestHandler):
    def do_POST(self):
        if self.path == '/upload':
            try:
                # Parse the form data
                form = cgi.FieldStorage(
                    fp=self.rfile,
                    headers=self.headers,
                    environ={'REQUEST_METHOD': 'POST'}
                )
                
                # Get the uploaded file
                fileitem = form['file']
                
                if fileitem.filename:
                    # Create uploads directory if it doesn't exist
                    upload_dir = "uploads"
                    os.makedirs(upload_dir, exist_ok=True)
                    
                    # Save the file
                    filepath = os.path.join(upload_dir, fileitem.filename)
                    with open(filepath, 'wb') as f:
                        f.write(fileitem.file.read())
                    
                    print(f"[+] File uploaded: {filepath} ({os.path.getsize(filepath)} bytes)")
                    
                    # Send success response
                    self.send_response(200)
                    self.send_header('Content-type', 'text/plain')
                    self.end_headers()
                    self.wfile.write(b'Upload successful')
                else:
                    self.send_response(400)
                    self.send_header('Content-type', 'text/plain')
                    self.end_headers()
                    self.wfile.write(b'No file uploaded')
                    
            except Exception as e:
                print(f"[-] Upload error: {e}")
                self.send_response(500)
                self.send_header('Content-type', 'text/plain')
                self.end_headers()
                self.wfile.write(f'Upload failed: {e}'.encode())
        else:
            self.send_response(404)
            self.end_headers()
    
    def log_message(self, format, *args):
        # Suppress default logging
        pass

def start_upload_server():
    server = HTTPServer(('0.0.0.0', 8080), UploadHandler)
    print("[*] Upload server started on port 8080")
    server.serve_forever()

if __name__ == "__main__":
    start_upload_server()