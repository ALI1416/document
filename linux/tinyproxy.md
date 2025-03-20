# TinyProxy

- 安装：`apt install tinyproxy`
- 配置文件：`/etc/tinyproxy/tinyproxy.conf`
  - 允许全部IP访问，注释`Allow 127.0.0.1`、`Allow ::1`
  - 端口号，修改`Port 8888`
  - 允许HTTPS请求，取消注释`#ConnectPort 443`
  - 配置基本认证，修改`#BasicAuth user password`
- 日志文件：`/var/log/tinyproxy/tinyproxy.log`
- 重启：`systemctl restart tinyproxy`

- Windows配置代理服务器
  1. 设置
  2. 网络
  3. 代理
  4. 手动设置代理
  5. 使用代理服务器
  6. 填上地址和端口`8888`
  7. 保存
  8. 浏览器访问
