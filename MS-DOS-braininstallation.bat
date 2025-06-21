@echo off
title MS-DOS 7.0.0 Beta Installer
color 0a

set /p startInstall=Do you want to start the MS-DOS 7.0.0 Beta installation? (y/n): 
if /i "%startInstall%" NEQ "y" (
    echo.
    echo Installation canceled.
    pause
    exit
)

echo.
echo Starting installation in...
ping localhost -n 2 >nul
echo 3
ping localhost -n 2 >nul
echo 2
ping localhost -n 2 >nul
echo 1
ping localhost -n 2 >nul

echo.
echo Creating installer file in C:\Downloads...
ping localhost -n 4 >nul
echo File created: C:\Downloads\MS-DOS-7-BETA.exe

echo.
echo Installing components...
setlocal EnableDelayedExpansion

REM Start showing random numbers for 3 seconds (about 100 of them)
for /l %%a in (1,1,100) do (
    set /a rnd=!random!
    echo Installing component ID: !rnd!
    >nul ping localhost -n 1
)

echo.
echo MS-DOS 7.0.0 Beta installation complete.
pause
