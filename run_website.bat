@echo off
title Rivoelc Local Server
echo ==========================================
echo Starting Rivoelc Website...
echo ==========================================
echo.

:: Check if python is available
where python >nul 2>nul
if %ERRORLEVEL% equ 0 (
    echo Python found. Starting local server on http://localhost:8000 ...
    start "Rivoelc Server (Python)" cmd /c "python -m http.server 8000"
    timeout /t 2 >nul
    start http://localhost:8000
    goto end
)

:: Check if Node/npx is available
where npx >nul 2>nul
if %ERRORLEVEL% equ 0 (
    echo Node.js/npx found. Starting local server on http://localhost:8000 ...
    start "Rivoelc Server (Node)" cmd /c "npx http-server -p 8000"
    timeout /t 3 >nul
    start http://localhost:8000
    goto end
)

:: Fallback: Open index.html directly in the default browser
echo No local web server (Python/Node) detected.
echo Opening index.html directly in your default browser...
start "" "index.html"

:end
echo.
echo ==========================================
echo Website launch command completed!
echo If a background server window opened,
echo keep it open while using the website.
echo ==========================================
pause
