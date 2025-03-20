# frp

- 文档地址 <https://gofrp.org/zh-cn/docs/>
- 下载地址 <https://github.com/fatedier/frp/releases>

1. 下载`frp_xxx_linux_amd64.tar.gz`版本
2. 压缩包复制到`/opt`
3. 解压：`tar -xzf frp_xxx_linux_amd64.tar.gz`
4. 简化目录名，将`frp_xxx`改为`frp`：`mv frp_xxx frp`
5. 修改所有者和分组`chown -R root:root /opt/frp`
6. 启动：`/opt/frp/frps -c /opt/frp/frps.toml`

## 创建服务

在`/etc/systemd/system`目录下创建以下文件

服务端 `frps.service`

```ini
[Unit]
Description = frp server
After = network.target syslog.target
Wants = network.target

[Service]
Type = simple
ExecStart = /opt/frp/frps -c /opt/frp/frps.toml

[Install]
WantedBy = multi-user.target
```

客户端 `frpc.service`

```ini
[Unit]
Description = frp client
After = network.target syslog.target
Wants = network.target

[Service]
Type = simple
ExecStart = /opt/frp/frpc -c /opt/frp/frpc.toml

[Install]
WantedBy = multi-user.target
```

## 服务端

运行程序 `frps -c frps.toml`

```ini
bindPort = 7000
auth.token = "xxx"
log.to = "./frps.log"
log.level = "info"
log.maxDays = 7
webServer.addr = "0.0.0.0"
webServer.port = 7001
webServer.user = "xxx"
webServer.password = "xxx"
```

- `bindPort` : 绑定端口 `7000`
- `auth` : 认证
  - `token` : token `xxx`
- `log` : 日志
  - `to` : 文件 `./frps.log`
  - `level` : 级别 `info`
  - `maxDays` : 最大保留天数 `7`
- `webServer` : 仪表盘
  - `addr` : 地址 `0.0.0.0`
  - `port` : 端口 `7001`
  - `user` : 用户名 `xxx`
  - `password` : 密码 `xxx`

## 客户端

运行程序 `frpc -c frpc.toml`

```ini
serverAddr = "192.168.1.1"
serverPort = 7000
auth.token = "xxx"

[[proxies]]

[[visitors]]
```

- `serverAddr` : 服务器地址 `192.168.1.1`
- `serverPort` : 服务器端口 `7000`
- `auth` : 认证
  - `token` : token(需要与服务端一致) `xxx`
- `proxies` : 代理配置
- `visitors` : 访问者配置

## TCP代理(也可以代理HTTP)

命令行访问 `ssh -o Port=6000 ali@192.168.1.1`

```ini
serverAddr = "192.168.1.1"
serverPort = 7000
auth.token = "xxx"

[[proxies]]
name = "ssh"
type = "tcp"
localIP = "127.0.0.1"
localPort = 22
remotePort = 6000
```

- `name` : 代理名称 `ssh`
- `type` : 代理类型 `tcp`
- `localIP` : 本地IP `127.0.0.1`
- `localPort` : 本地端口 `22`
- `remotePort` : 远端端口 `6000`

## STCP(安全TCP)代理

客户端

```ini
serverAddr = "192.168.1.1"
serverPort = 7000
auth.token = "xxx"

[[proxies]]
name = "secret_ssh"
type = "stcp"
secretKey = "xxx"
localIP = "127.0.0.1"
localPort = 22
```

- `secretKey` : 秘钥 `xxx`

访问者

命令行访问 `ssh -o Port=6000 ali@127.0.0.1`

```ini
serverAddr = "192.168.1.1"
serverPort = 7000
auth.token = "xxx"

[[visitors]]
name = "secret_ssh_visitor"
type = "stcp"
serverName = "secret_ssh"
secretKey = "xxx"
bindAddr = "127.0.0.1"
bindPort = 6000
```

- `serverName` : 服务名称(需要与客户端一致) `secret_ssh`
- `secretKey` : 秘钥(需要与客户端一致) `xxx`
- `bindAddr` : 绑定地址 `127.0.0.1`
- `bindPort` : 绑定端口 `6000`

## XTCP(点对点TCP)代理

客户端

```ini
serverAddr = "192.168.1.1"
serverPort = 7000
auth.token = "xxx"
natHoleStunServer = "stun.easyvoip.com:3478"

[[proxies]]
name = "p2p_ssh"
type = "xtcp"
secretKey = "xxx"
localIP = "127.0.0.1"
localPort = 22
```

- `natHoleStunServer` : NAT打洞STUN服务器

- 需要手动判断是否正常工作`frpc nathole discover --nat_hole_stun_server stun.easyvoip.com:3478`
- 需要自己搭建NAT打洞STUN服务器`https://github.com/coturn/coturn`

访问者

命令行访问 `ssh -o Port=6000 ali@127.0.0.1`

```ini
serverAddr = "192.168.1.1"
serverPort = 7000
auth.token = "xxx"
natHoleStunServer = "stun.easyvoip.com:3478"

[[visitors]]
name = "p2p_ssh_visitor"
type = "xtcp"
serverName = "p2p_ssh"
secretKey = "xxx"
bindAddr = "127.0.0.1"
bindPort = 6000
```

## coturn

- 安装：`apt install coturn`
- 配置文件：`/etc/turnserver.conf`、`/etc/default/coturn/`
- 判断是否正常工作：<https://webrtc.github.io/samples/src/content/peerconnection/trickle-ice/>
