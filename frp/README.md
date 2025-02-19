# frp

- 文档地址 <https://gofrp.org/zh-cn/docs/>
- 下载地址 <https://github.com/fatedier/frp/releases>

## Windows使用frp

1. 下载`frp_xxx_windows_amd64.zip`版本

## Linux使用frp

1. 下载`frp_xxx_linux_amd64.tar.gz`版本
2. 解压到`/usr/local/bin/frp`
3. 分配可执行权限`chmod 755 /usr/local/bin/frp/frps /usr/local/bin/frp/frpc`
4. 在`/etc/systemd/system`目录下创建以下文件

`frps.service`

```ini
[Unit]
Description = frp server
After = network.target syslog.target
Wants = network.target

[Service]
Type = simple
ExecStart = /usr/local/bin/frp/frps -c /usr/local/bin/frp/frps.json

[Install]
WantedBy = multi-user.target
```

`frpc.service`

```ini
[Unit]
Description = frp client
After = network.target syslog.target
Wants = network.target

[Service]
Type = simple
ExecStart = /usr/local/bin/frp/frpc -c /usr/local/bin/frp/frpc.json

[Install]
WantedBy = multi-user.target
```

- `systemctl status frps` 检查服务状态
- `systemctl start frps` 启动服务
- `systemctl stop frps` 停止服务
- `systemctl reload frps` 重新加载服务
- `systemctl restart frps` 重启服务
- `systemctl enable frps` 设置服务开机自启
- `systemctl disable frps` 取消服务开机自启

## 服务端

运行程序 `frps -c frps.json`

```json
{
  "bindPort": 7000,
  "auth": {
    "method": "token",
    "token": "xxx"
  }
}
```

- `bindPort` : 绑定端口 `7000`
- `auth` : 需要认证
  - `method` : 认证方法 `token`
  - `token` : token值 `xxx`

## 客户端

运行程序 `frpc -c frpc.json`

```json
{
  "serverAddr": "47.106.194.72",
  "serverPort": 7000,
  "auth": {
    "method": "token",
    "token": "xxx"
  },
  "proxies": []
}
```

- `serverAddr` : 服务器地址 `47.106.194.72`
- `serverPort` : 服务器端口 `7000`
- `auth` : 需要认证
  - `method` : 认证方法 `token`
  - `token` : token值 `xxx`
- `proxies` : 代理配置

## 代理SSH

访问地址 `ssh -o Port=6000 ali@47.106.194.72`

```json
{
  "serverAddr": "47.106.194.72",
  "serverPort": 7000,
  "auth": {
    "method": "token",
    "token": "xxx"
  },
  "proxies": [
    {
      "name": "ssh",
      "type": "tcp",
      "localIP": "127.0.0.1",
      "localPort": 22,
      "remotePort": 6000
    }
  ]
}
```

- `name` : 代理名称 `ssh`
- `type` : 代理类型 `tcp`
- `localIP` : 本地IP `127.0.0.1`
- `localPort` : 本地端口 `22`
- `remotePort` : 远端端口 `6000`
