@echo off
chcp 65001 >nul
title Master Suite Installation (Universal)
echo ===================================================
echo   Master Suite Universal Installation (All AIs)
echo ===================================================
echo.

echo [1/3] Connecting to GitHub and downloading the latest version...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/webtasarimofisim/usersuite/archive/refs/heads/main.zip' -OutFile 'usersuite_temp.zip'"
echo [2/3] Extracting files...
powershell -Command "Expand-Archive -Path 'usersuite_temp.zip' -DestinationPath '.' -Force"

echo [3/3] Installing to appropriate AI environments...
set "DIRS=%USERPROFILE%\.gemini\config\plugins\master-suite %USERPROFILE%\.codex\plugins\master-suite %USERPROFILE%\.claude\extensions\master-suite %USERPROFILE%\.opencode\plugins\master-suite"

for %%D in (%DIRS%) do (
    if not exist "%%D" mkdir "%%D"
    xcopy /s /e /y "usersuite-main\*" "%%D\" >nul
    echo -> Installed to: %%D
)

python "%TARGET_DIR%\mcp_installer.py"
rmdir /s /q "usersuite-main"
del "usersuite_temp.zip"

echo.
echo ===================================================
echo INSTALLATION COMPLETED SUCCESSFULLY!
echo ===================================================
pause
