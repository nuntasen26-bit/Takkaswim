#!/usr/bin/env python3
"""
Takkasila Swimming Club Hub — Local Preview Server
Serves the Stitch Design Portal and all interactive screens locally.
"""

import http.server
import socketserver
import webbrowser
import os
import sys

PORT = 4173
HOST = "localhost"

class CustomHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # Enable CORS and disable caching during preview
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Cache-Control", "no-cache, no-store, must-revalidate")
        super().end_headers()

def main():
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    
    # Try starting server, fallback to alternative port if in use
    port = PORT
    httpd = None
    for attempt in range(10):
        try:
            socketserver.TCPServer.allow_reuse_address = True
            httpd = socketserver.TCPServer((HOST, port), CustomHandler)
            break
        except OSError:
            port += 1
            
    if not httpd:
        print(f"Error: Could not bind to port {PORT} through {port-1}")
        sys.exit(1)
        
    url = f"http://{HOST}:{port}/"
    print("=" * 65)
    print("  🏊 TAKKASILA SWIMMING CLUB HUB — PREVIEW SERVER RUNNING")
    print("=" * 65)
    print(f"  URL:           {url}")
    print(f"  Main Screen:   {url}screens/1feb3334_Takkasila%20Swimming%20Club%20App.html")
    print(f"  Design System: {url}DESIGN_SYSTEM.md")
    print("-" * 65)
    print("  Press Ctrl+C to stop the server.")
    print("=" * 65)
    
    # Automatically open browser
    try:
        webbrowser.open(url)
    except Exception:
        pass
        
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nServer stopped.")
        httpd.server_close()

if __name__ == "__main__":
    main()
