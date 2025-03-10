@echo off
echo Setting proxy to http://127.0.0.1:7890 ...

rem 设置 HTTP 代理
netsh winhttp set proxy proxy-server="http=127.0.0.1:7890" bypass-list="*.local"

rem 设置 HTTPS 代理
netsh winhttp set proxy proxy-server="https=127.0.0.1:7890" bypass-list="*.local"

rem 设置 IE 代理
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d "127.0.0.1:7890" /f

echo Proxy has been set to http://127.0.0.1:7890.

ping 127.0.0.1 -n 3 > nul