#!/usr/bin/env bash
# ==============================================================================
# Takkasila Swimming Club Hub — Start App
# ==============================================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if command -v python3 >/dev/null 2>&1; then
    python3 server.py
elif command -v python >/dev/null 2>&1; then
    python server.py
else
    echo "❌ ไม่พบ Python! กรุณาติดตั้ง Python จาก https://www.python.org/"
    read -p "กด Enter เพื่อออก..."
    exit 1
fi
