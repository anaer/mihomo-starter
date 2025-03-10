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


## 服务

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

## 规则来源
https://github.com/Loyalsoldier/clash-rules
https://github.com/PolarisYan/Clash-Rules