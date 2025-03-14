## 脚本说明

| 文件名          | 说明                                             |
| --------------- | ------------------------------------------------ |
| 0.update.bat/sh | 更新 clash.yaml                                  |
| 1.start.bat/sh  | 启动 mihomo, 如果开启 TUN 需要使用管理员模式启动 |
| 1.start.vbs     | 启动 mihomo, 不显示黑窗                          |
| 2.proxy.bat     | 设置系统代理                                     |
| 3.unproxy.bat   | 取消系统代理                                     |
| 4.geo.bat       | 解包 geosite.dat, geoip.dat 到目录中, 便于查询   |
| 5.stop.bat      | 停止 mihomo, 对应 1.start.vbs                    |


## Win服务

[winsw服务管理](https://github.com/winsw/winsw)
[日志设置](https://github.com/winsw/winsw/blob/v3/docs/logging-and-error-reporting.md)

```sh
# 安装服务
mihomo-server.exe install mihomo-server.xml
# 卸载服务
mihomo-server.exe uninstall mihomo-server.xml
# 启动服务
mihomo-server.exe start mihomo-server.xml
# 停止服务
mihomo-server.exe stop mihomo-server.xml
```

## Mac服务

### 1. **创建 LaunchAgent 配置文件**
在终端执行以下命令，创建 `~Library/LaunchAgents` 目录（如未存在）并生成配置文件：
```bash
mkdir -p ~/Library/LaunchAgents
nano ~/Library/LaunchAgents/mihomo.plist
```

---

### 2. **编辑 `.plist` 文件内容**
将以下内容填入文件中，并根据 **实际路径** 调整以下部分：
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>mihomo.service</string>       <!-- 自定义服务标识 -->
    <key>ProgramArguments</key>
    <array>
        <string>/完整路径/mihomo-darwin-amd64</string> <!-- 参考[2]，需替换为 mihomo 二进制文件的真实路径 -->
        <string>-f</string>
        <string>/完整路径/mihomo.yaml</string>          <!-- 配置文件绝对路径 -->
        <string>-d</string>
        <string>/root/mihomo_starter</string>           <!-- 日志目录路径 -->
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <false/>
</dict>
</plist>
```

---

### 3. **加载并验证服务**
保存文件后执行以下命令，确保服务生效：
```bash
launchctl load ~/Library/LaunchAgents/mihomo.plist   # 加载服务
launchctl list | grep mihomo                          # 验证是否加载
```

## 相关链接
https://github.com/Loyalsoldier/clash-rules
https://github.com/PolarisYan/Clash-Rules

https://github.com/521xueweihan/GitHub520