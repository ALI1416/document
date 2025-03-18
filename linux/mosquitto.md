# mosquitto

- 安装：`apt install mosquitto mosquitto-clients`
- 修改配置文件：`/etc/mosquitto/mosquitto.conf`

```ini
# 禁止匿名访问
allow_anonymous false
# mqtt协议
listener 1883 0.0.0.0
protocol mqtt
socket_domain ipv4
# websocket协议
listener 15675 0.0.0.0
protocol websockets
socket_domain ipv4
# 密码文件
password_file /etc/mosquitto/pwfile.txt
```

- 创建密码文件：`touch /etc/mosquitto/pwfile.txt`
- 修改权限：`chmod 700 /etc/mosquitto/pwfile.txt`、`chown mosquitto:mosquitto /etc/mosquitto/pwfile.txt`
- 配置密码：`mosquitto_passwd /etc/mosquitto/pwfile.txt 用户名`
- 重启：`systemctl restart mosquitto`
- 订阅主题：`mosquitto_sub -h localhost -p 1883 -u root -P admin -t "topic"`
- 发布消息：`mosquitto_pub -h localhost -p 1883 -u root -P admin -t "topic" -m "message"`
