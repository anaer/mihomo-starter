@echo off
setlocal

REM 检测是否已经启动程序, 如果未启动 取消代理设置

tasklist /FI "IMAGENAME eq mihomo-windows-amd64.exe" | findstr /i /c:"mihomo" > nul
set "running=%errorlevel%"

if %running% equ 1 (
    echo Neither clash.meta-windows-amd64.exe nor mihomo-windows-amd64.exe is running. Disabling system proxy configuration.
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
    netsh winhttp reset proxy
)

endlocal

ping 127.0.0.1 -n 3 > nul