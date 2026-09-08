@echo off
chcp 65001 >nul
set "GIT_CMD=C:\Program Files\Autodesk\InfraWorks\Git\cmd\git.exe"

echo ===================================================
echo   Push Research Discovery Hub to GitHub
echo ===================================================
echo.
echo บัญชี GitHub ปัจจุบันของคุณ: sonagar1234-bot
echo.
echo ขั้นตอน:
echo 1. เข้าเว็บ https://github.com/new
echo 2. ตั้งชื่อ Repository เช่น research-discovery-hub (เลือก Public)
echo 3. กด "Create repository"
echo.
set /p REPO_NAME="ใส่ชื่อ Repository ที่คุณเพิ่งสร้าง (เช่น research-discovery-hub): "

if "%REPO_NAME%"=="" (
    echo ไม่ได้ระบุชื่อ Repository ยกเลิกการทำงาน
    pause
    exit /b
)

"%GIT_CMD%" remote remove origin 2>nul
"%GIT_CMD%" remote add origin https://github.com/sonagar1234-bot/%REPO_NAME%.git
"%GIT_CMD%" branch -M main

echo.
echo กำลัง Push โค้ดขึ้น GitHub...
echo (หากมีหน้าต่าง Browser เด้งขึ้นมา ให้กดยืนยันการเข้าสู่ระบบ GitHub)
echo.
"%GIT_CMD%" push -u origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo ===================================================
    echo   ✅ Push สำเร็จเรียบร้อย!
    echo ===================================================
    echo.
    echo ขั้นตอนเปิดเว็บให้เพื่อนเข้าใช้งานฟรี (GitHub Pages):
    echo 1. ไปที่ https://github.com/sonagar1234-bot/%REPO_NAME%/settings/pages
    echo 2. ในส่วน "Build and deployment" ตรง Branch เลือก "main" และโฟลเดอร์ "/ (root)"
    echo 3. กดปุ่ม "Save"
    echo.
    echo 🌐 เว็บของคุณจะพร้อมใช้งานที่:
    echo https://sonagar1234-bot.github.io/%REPO_NAME%/
    echo.
) else (
    echo.
    echo ❌ เกิดข้อผิดพลาดในการ Push กรุณาตรวจสอบว่าสร้าง Repository บน GitHub แล้วหรือยัง
)

echo.
pause
