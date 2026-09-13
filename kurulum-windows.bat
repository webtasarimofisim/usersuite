@echo off
chcp 65001 >nul
title Master Suite Kurulumu (Universal)
echo ===================================================
echo   Master Suite Kurulumu (Tum Yapay Zekalar Icin)
echo ===================================================
echo.

echo [1/3] Sisteme baglaniliyor ve en guncel surum indiriliyor...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/webtasarimofisim/usersuite/archive/refs/heads/main.zip' -OutFile 'usersuite_temp.zip'"
echo [2/3] Dosyalar cikariliyor...
powershell -Command "Expand-Archive -Path 'usersuite_temp.zip' -DestinationPath '.' -Force"

echo [3/3] Uygun AI ortamlarina kurulum yapiliyor...
set "DIRS=%USERPROFILE%\.gemini\config\plugins\master-suite %USERPROFILE%\.codex\plugins\master-suite %USERPROFILE%\.claude\extensions\master-suite %USERPROFILE%\.opencode\plugins\master-suite"

for %%D in (%DIRS%) do (
    if not exist "%%D" mkdir "%%D"
    xcopy /s /e /y "usersuite-main\*" "%%D\" >nul
    echo -> Kuruldu: %%D
)

rmdir /s /q "usersuite-main"
del "usersuite_temp.zip"

echo.
echo ===================================================
echo KURULUM BASARIYLA TAMAMLANDI!
echo ===================================================
pause
