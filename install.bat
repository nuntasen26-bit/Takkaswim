@echo off
chcp 65001 >nul
title Takkasila Swimming Club Hub - Installer

echo ===================================================================
echo 🏊  กำลังติดตั้ง Takkasila Swimming Club Hub สำหรับ Windows...
echo ===================================================================

cd /d "%~dp0"

:: 1. ตรวจสอบ Python
python --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    py --version >nul 2>&1
    if %ERRORLEVEL% NEQ 0 (
        echo ❌ ไม่พบ Python ในเครื่องของคุณ!
        echo กรุณาดาวน์โหลดและติดตั้ง Python จาก: https://www.python.org/downloads/
        echo (อย่าลืมติ๊กเลือก "Add Python to PATH" ตอนติดตั้ง)
        echo.
        pause
        exit /b 1
    )
)

echo ✓ ตรวจพบ Python บนระบบแล้ว

:: 2. สร้าง Shortcut บน Desktop (ผ่าน VBScript)
set SCRIPT_DIR=%~dp0
set SHORTCUT_VBS=%TEMP%\CreateTakkaswimShortcut.vbs

echo Set oWS = WScript.CreateObject("WScript.Shell") > "%SHORTCUT_VBS%"
echo sLinkFile = oWS.SpecialFolders("Desktop") ^& "\Takkasila Swimming Club.lnk" >> "%SHORTCUT_VBS%"
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> "%SHORTCUT_VBS%"
echo oLink.TargetPath = "%SCRIPT_DIR%start.bat" >> "%SHORTCUT_VBS%"
echo oLink.WorkingDirectory = "%SCRIPT_DIR%" >> "%SHORTCUT_VBS%"
echo oLink.Description = "เปิดใช้งาน Takkasila Swimming Club Hub" >> "%SHORTCUT_VBS%"
echo oLink.Save >> "%SHORTCUT_VBS%"

cscript //nologo "%SHORTCUT_VBS%" >nul 2>&1
del "%SHORTCUT_VBS%" >nul 2>&1

echo ✓ สร้างไอคอนทางลัดบน Desktop: "Takkasila Swimming Club" เรียบร้อยแล้ว

echo ===================================================================
echo 🎉  การติดตั้งเสร็จสมบูรณ์เรียบร้อย!
echo ===================================================================
echo คุณสามารถเปิดโปรแกรมได้โดย:
echo   1. ดับเบิลคลิกที่ไอคอน "Takkasila Swimming Club" บนหน้าจอ Desktop
echo   2. หรือดับเบิลคลิกที่ไฟล์ "start.bat" ในโฟลเดอร์นี้
echo ===================================================================
echo.
pause
