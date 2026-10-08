#!/usr/bin/env bash
# ==============================================================================
# Takkasila Swimming Club Hub — Setup & Installer for macOS / Linux
# ==============================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "==================================================================="
echo "🏊  กำลังติดตั้ง Takkasila Swimming Club Hub บนระบบของคุณ..."
echo "==================================================================="

# 1. ตรวจสอบ Python 3
if command -v python3 >/dev/null 2>&1; then
    PYTHON_VERSION=$(python3 --version 2>&1)
    echo "✓ ตรวจพบ Python: $PYTHON_VERSION"
elif command -v python >/dev/null 2>&1; then
    PYTHON_VERSION=$(python --version 2>&1)
    echo "✓ ตรวจพบ Python: $PYTHON_VERSION"
else
    echo "❌ ไม่พบ Python ในเครื่องของคุณ!"
    echo "กรุณาติดตั้ง Python 3 จาก https://www.python.org/downloads/ แล้วลองใหม่อีกครั้ง"
    exit 1
fi

# 2. ตั้งค่าสิทธิ์ Execute ให้ไฟล์สคริปต์
chmod +x "$SCRIPT_DIR/start.sh" 2>/dev/null || true
chmod +x "$SCRIPT_DIR/server.py" 2>/dev/null || true

# 3. ถ้าเป็น macOS สร้างไฟล์ Double-Click Launcher (.command)
if [[ "$OSTYPE" == "darwin"* ]]; then
    LAUNCHER="$SCRIPT_DIR/Takkaswim.command"
    cat > "$LAUNCHER" << 'EOF'
#!/usr/bin/env bash
cd "$(dirname "$0")"
./start.sh
EOF
    chmod +x "$LAUNCHER"
    echo "✓ สร้างตัวเปิดโปรแกรมบน macOS: Takkaswim.command (ดับเบิลคลิกเปิดได้ทันที)"
fi

echo "==================================================================="
echo "🎉  การติดตั้งเสร็จสมบูรณ์เรียบร้อย!"
echo "==================================================================="
echo "วิธีเปิดใช้งานโปรแกรม:"
echo "  - บน macOS: ดับเบิลคลิกที่ไฟล์ 'Takkaswim.command' หรือรัน ./start.sh"
echo "  - บน Linux: รันคำสั่ง ./start.sh"
echo "==================================================================="
