# frp

1. 拉取镜像`docker pull snowdreamtech/frps`(仅服务端，拉取需要第三方镜像源)
2. 启动临时容器`docker run --name frps -d snowdreamtech/frps`
3. 进入容器内部`docker exec -it frps sh`(使用了精简版linux，不能使用bash)查看要映射哪些内容
   1. 配置文件`/etc/frp/frps.toml`映射到`/docker/frps/conf/frps.toml`，创建文件夹`mkdir -p /docker/frps/conf`，复制文件`docker cp frps:/etc/frp/frps.toml /docker/frps/conf`
   2. 日志文件`/var/log/frp/frps.log`(不存在)映射到`/docker/frps/log/frps.log`，创建文件夹`mkdir -p /docker/frps/log`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/frps/{conf,log}
docker cp frps:/etc/frp/frps.toml /docker/frps/conf
```

5. 修改配置文件`/docker/frps/conf/frps.toml`

```ini
bindPort = 7000
auth.token = "xxx"
log.to = "/var/log/frp/frps.log"
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
  - `to` : 文件路径 `/var/log/frp/frps.log`
  - `level` : 级别 `info`
  - `maxDays` : 最大保留天数 `7`
- `webServer` : 仪表盘
  - `addr` : 地址 `0.0.0.0`
  - `port` : 端口 `7001`
  - `user` : 用户名 `xxx`
  - `password` : 密码 `xxx`

6. 停止并删除临时容器`docker stop frps && docker rm frps`
7. 配置并启动容器

```sh
docker run -d --name frps \
 --net=host \
 -v /docker/frps/conf/frps.toml:/etc/frp/frps.toml \
 -v /docker/frps/log:/var/log/frp \
 --restart=always \
 snowdreamtech/frps
```

- `--net=host`host网络模式(共享宿主网络)
