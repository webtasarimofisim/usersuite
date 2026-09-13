@echo off
chcp 65001 >nul
title Master Suite Kurulumu
echo ===================================================
echo     Master Suite (User Edition) Kurulumu
echo ===================================================
echo.

set "TARGET_DIR=%USERPROFILE%\.gemini\config\plugins\master-suite"
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

echo [1/3] Sisteme baglaniliyor ve en guncel surum indiriliyor...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/webtasarimofisim/usersuite/archive/refs/heads/main.zip' -OutFile 'usersuite_temp.zip'"

echo [2/3] Dosyalar sistem klasorune cikariliyor...
powershell -Command "Expand-Archive -Path 'usersuite_temp.zip' -DestinationPath '.' -Force"
xcopy /s /e /y "usersuite-main\*" "%TARGET_DIR%\" >nul

echo [3/3] Gecici dosyalar temizleniyor...
rmdir /s /q "usersuite-main"
del "usersuite_temp.zip"

echo.
echo ===================================================
echo KURULUM BASARIYLA TAMAMLANDI!
echo ===================================================
echo Lutfen yapay zeka uygulamanizi (Antigravity) yeniden
echo baslatin ve sohbete /suite baslat yazin.
echo.
pause
