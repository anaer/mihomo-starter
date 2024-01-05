@echo off
setlocal

REM 检测是否已经启动clash.meta-windows-amd64.exe和mihomo-windows-amd64.exe程序
tasklist /FI "IMAGENAME eq clash.meta-windows-amd64.exe" | findstr /i /c:"clash" > nul
set "a_running=%errorlevel%"

tasklist /FI "IMAGENAME eq mihomo-windows-amd64.exe" | findstr /i /c:"mihomo" > nul
set "b_running=%errorlevel%"

if %a_running% equ 0 (
    echo a.exe is running.
) else (
    echo a.exe is not running.
)

if %b_running% equ 0 (
    echo mihomo-windows-amd64.exe is running.
) else (
    echo mihomo-windows-amd64.exe is not running.
)

if %a_running% equ 1 if %b_running% equ 1 (
    echo Neither clash.meta-windows-amd64.exe nor mihomo-windows-amd64.exe is running. Disabling system proxy configuration.
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
    netsh winhttp reset proxy
)

endlocal

ping 127.0.0.1 -n 3 > nul