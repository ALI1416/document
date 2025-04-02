# OpenVPN

- 安装：`apt install openvpn libssl-dev openssl`
- 配置文件目录：`/etc/openvpn/`
- 把证书文件`ca.crt`、`dh.pem`、`server.crt`、`server.key`、`ta.key`放入`/etc/openvpn/server/`
- 新建服务端配置文件：`/etc/openvpn/server/server.conf`，内容如下

```ini
# 本机IP(多网卡需要填写)
;local 192.168.1.1

# 端口号
port 1194

# 使用UDP协议(TCP也可)
proto udp

# 路由模式(tap桥接)
dev tun

# 证书路径
ca ca.crt
cert server.crt
key server.key
dh dh.pem
tls-auth ta.key 0 # 0代表服务端
;key-direction 0 # 此选项可以代替以上的0

# 网段IP和掩码
server 10.8.0.0 255.255.255.0

# 固定客户端IP(duplicate-cn开启后无效)
;ifconfig-pool-persist ipp.txt

# 允许客户端访问其他客户端
client-to-client

# 允许相同客户登录多个
duplicate-cn

# 用户名密码验证脚本
auth-user-pass-verify author.sh via-env

# 允许调用外部脚本
script-security 3

# 可以不使用证书，只使用用户名密码验证
verify-client-cert none

# 用户名密码验证使用客户提供的UserName作为Common Name(使ifconfig-pool-persist生效)
username-as-common-name

# 心跳
keepalive 10 120

# 其他
topology subnet
persist-key
persist-tun
status openvpn-status.log
verb 3
explicit-exit-notify 1
```

- 固定客户端IP，修改文件`ipp.txt`，格式为`<用户名>,<ipv4网段>,<ipv6网段>`，例如

```txt
root,10.8.0.2,
admin,10.8.0.3,
```

- 用户名密码验证脚本，新增文件`author.sh`，例如：
- 给文件可执行权限`chmod 755 /etc/openvpn/server/author.sh`

```sh
#!/bin/sh
[ -n "$(grep -x $username:$password user.txt)" ] && exit 0 || exit 1
```

- 用户名密码格式为`<用户名>:<密码>`，新增文件`user.txt`(换行符必须为`LF`)，例如

```txt
root:root
admin:123456
```

## 修改服务

修改`/usr/lib/systemd/system/openvpn.service`文件

```ini
[Unit]
Description = OpenVPN service
Documentation = man:openvpn(8)
After = network.target

[Service]
Type = simple
ExecStart = /usr/sbin/openvpn --config /etc/openvpn/server/server.conf
WorkingDirectory = /etc/openvpn/server

[Install]
WantedBy = multi-user.target
```
