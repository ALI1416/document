# redis

1. 拉取镜像`docker pull redis`
2. 启动临时容器`docker run --name redis -d redis`
3. 进入容器内部`docker exec -it redis bash`查看要映射哪些内容
   1. 配置文件`/etc/redis/redis.conf`(不存在)映射到`/docker/redis/conf/redis.conf`，创建文件夹`mkdir -p /docker/redis/conf`
   2. 数据文件夹`/data`(不存在)映射到`/docker/redis/data`，创建文件夹`mkdir -p /docker/redis/data`
   3. 日志文件夹`/var/log/redis`(不存在)映射到`/docker/redis/log`，创建文件夹`mkdir -p /docker/redis/log`，修改文件夹权限`chown -R 999:999 /docker/redis/log`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/redis/{conf,data,log}
touch /docker/redis/conf/redis.conf
chown -R 999:999 /docker/redis/log
```

5. 修改配置文件`/docker/redis/conf/redis.conf`

```ini
# 端口号
port 6379
# 密码
requirepass "Alibaba2021!"
# 关闭保护模式
protected-mode no
# 关闭后台运行
daemonize no
# 允许所有IP访问
bind 0.0.0.0
# 持久化文件存放目录
dir /data
# 设置日志级别
loglevel debug
# 指定日志文件名
logfile "/var/log/redis/redis.log"

# RDB持久化配置
save 900 1
save 300 10
save 60 10000
stop-writes-on-bgsave-error yes
rdbcompression yes
dbfilename dump.rdb

# AOF持久化配置
appendonly yes
appendfilename "appendonly.aof"
appendfsync everysec
auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb
```

6. 停止并删除临时容器`docker stop redis && docker rm redis`
7. 配置并启动容器

```sh
docker run -d --name redis \
 -p 6379:6379 \
 -v /docker/redis/conf/redis.conf:/etc/redis/redis.conf \
 -v /docker/redis/data:/data \
 -v /docker/redis/log:/var/log/redis \
 --restart=always \
 redis redis-server /etc/redis/redis.conf
```

- `redis-server /etc/redis/redis.conf`指定配置文件
