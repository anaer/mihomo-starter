@echo off
echo Disabling proxy ...

rem 禁用 HTTP 代理
netsh winhttp reset proxy

rem 禁用 IE 代理
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f

echo Proxy has been disabled.