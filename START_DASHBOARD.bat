@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo =============================================
echo  سامانه مدیریت و پایش فرآیندهای پردیس پلاست کویر
echo  نسخه محلی 4
echo =============================================
where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo Node.js نصب نیست. نسخه 22.5 یا بالاتر را نصب کنید.
  pause
  exit /b 1
)
start "" http://localhost:3000
node server.js
pause
