@echo off
chcp 65001 >nul
title Takkasila Swimming Club Hub

cd /d "%~dp0"

python --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    python server.py
    goto end
)

py --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    py server.py
    goto end
)

echo ❌ ไม่พบ Python! กรุณาติดตั้ง Python จาก https://www.python.org/downloads/
echo (อย่าลืมติ๊ก "Add Python to PATH")
pause

:end
