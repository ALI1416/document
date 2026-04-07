# mosquitto

1. 拉取镜像`docker pull eclipse-mosquitto`
2. 启动临时容器`docker run --name mosquitto -d eclipse-mosquitto`
3. 进入容器内部`docker exec -it mosquitto sh`(使用了精简版linux，不能使用bash)查看要映射哪些内容
   1. 配置文件`/mosquitto/config/mosquitto.conf`映射到`/docker/mosquitto/conf/mosquitto.conf`，创建文件夹`mkdir -p /docker/mosquitto/conf`，复制文件`docker cp mosquitto:/mosquitto/config/mosquitto.conf /docker/mosquitto/conf`，创建密码文件`touch /docker/mosquitto/conf/pwfile.txt`
   2. 数据文件夹`/mosquitto/data`映射到`/docker/mosquitto/data`，创建文件夹`mkdir -p /docker/mosquitto/data`
   3. 日志文件夹`/mosquitto/log`映射到`/docker/mosquitto/log`，创建文件夹`mkdir -p /docker/mosquitto/log`，修改文件夹权限`chown -R 999:999 /docker/mosquitto/log`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/mosquitto/{conf,data,log}
docker cp mosquitto:/mosquitto/config/mosquitto.conf /docker/mosquitto/conf
touch /docker/mosquitto/conf/pwfile.txt
```

5. 修改配置文件`/docker/mosquitto/conf/mosquitto.conf`

```ini
# 禁止匿名访问
allow_anonymous false
# mqtt协议
listener 1883 0.0.0.0
protocol mqtt
socket_domain ipv4
# websocket协议
listener 9001 0.0.0.0
protocol websockets
socket_domain ipv4
# 密码文件
password_file /mosquitto/config/pwfile.txt
# 持久化
persistence true
persistence_location /mosquitto/data/
# 日志
log_dest file /mosquitto/log/mosquitto.log
log_type all
```

6. 停止并删除临时容器`docker stop mosquitto && docker rm mosquitto`
7. 配置并启动容器

```sh
docker run -d --name mosquitto \
 -p 1883:1883 \
 -p 9001:9001 \
 -v /docker/mosquitto/conf/:/mosquitto/config \
 -v /docker/mosquitto/data/:/mosquitto/data \
 -v /docker/mosquitto/log/:/mosquitto/log \
 --restart=always \
 eclipse-mosquitto
```

8. 进入容器内部`docker exec -it mosquitto sh`
9. 配置密码`mosquitto_passwd /mosquitto/config/pwfile.txt 用户名`
10. 退出容器`exit`，重启容器`docker restart mosquitto`
