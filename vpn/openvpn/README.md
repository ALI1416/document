# OpenVPN

## 下载和安装

- `Windows客户端和服务端`(翻墙)<https://openvpn.net/community-downloads/>
- `Windows下载2.6.13版本`<https://swupdate.openvpn.org/community/releases/OpenVPN-2.6.13-I001-amd64.msi>
- 服务端需要额外安装`OpenSSL`下的`EasyRSA`

## 使用EasyRSA和OpenVPN生成证书

1. 进入`OpenVPN\easy-rsa`文件夹，双击`EasyRSA-Start.bat`文件
2. 初始化pki `easyrsa init-pki`(创建`pki`文件夹)
3. 生成无密码CA证书 `easyrsa build-ca nopass`(创建`pki/ca.crt`和`pki\private\ca.key`文件)
4. 生成无密码服务端证书 `easyrsa build-server-full server nopass`(创建`pki\issued\server.crt`和`pki\private\server.key`文件)
5. 生成无密码客户端证书 `easyrsa build-client-full client nopass`(创建`pki\issued\client.crt`和`pki\private\client.key`文件)
6. 创建密钥交换文件 `easyrsa gen-dh`(创建`pki/dh.pem`文件)
7. 进入`OpenVPN\bin`文件夹，使用`CMD`打开
8. 创建TLS认证密钥(拒绝服务攻击证书) `openvpn --genkey secret ta.key`(创建`ta.key`文件)

## 服务端配置

1. 打开`OpenVPN\config`文件夹
2. 把证书文件`ca.crt`、`dh.pem`、`server.crt`、`server.key`、`ta.key`放入
3. 创建配置文件`server.ovpn`(示例配置`sample-config\server.ovpn`)，写入以下内容

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
auth-user-pass-verify author.bat via-env

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

- 用户名密码验证脚本，新增文件`author.bat`，例如

```bat
findstr /be "%username%:%password%" user.txt && exit 0 || exit 1
```

- 用户名密码格式为`<用户名>:<密码>`，新增文件`user.txt`，例如

```txt
root:root
admin:123456
```

- 如果要把证书等文件放入到配置文件中，可以用以下方法

```ini
# ca文件
;ca ca.crt
<ca>
ca.crt文件内容
</ca>
# ta文件
;tls-auth ta.key 0
key-direction 0
<tls-auth>
ta.key文件内容
<tls-auth>
```

## 客户端配置

1. 打开`OpenVPN\config`文件夹
2. 把证书文件`ca.crt`、`ta.key`放入(使用证书验证还需放入`client.crt`、`client.key`)
3. 创建配置文件`client.ovpn`(示例配置`sample-config\client.ovpn`)，写入以下内容

```ini
# 标记是客户端
client

# 使用UDP协议(TCP也可)
proto udp

# 路由模式(tap桥接)
dev tun

# 服务端地址
remote 192.168.1.1 1194

# 证书路径
ca ca.crt
;cert client.crt
;key client.key
tls-auth ta.key 1 # 1代表客户端
;key-direction 1 # 此选项可以代替以上的1

# 使用用户名密码登录(不需要cert和key，但是需要ca和tls-auth(如果开启的话))
auth-user-pass

# 不自动登录
auth-nocache

# 其他
resolv-retry infinite
nobind
persist-key
persist-tun
remote-cert-tls server
verb 3
```

- Windows客户端访问其他客户端(管理员打开CMD) `route -p add 10.8.0.0 mask 255.255.255.0 10.8.0.1`(需要重启)
  - `-p` 路由将被永久添加到路由表中
  - `10.8.0.0` 网段
  - `255.255.255.0` 掩码
  - `10.8.0.1` 网关
