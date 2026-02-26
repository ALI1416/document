# redis

1. 拉取镜像`docker pull redis`
2. 启动临时容器`docker run --name redis -d redis`
3. 进入容器内部`docker exec -it redis bash`查看要映射哪些内容
   1. 配置文件`/etc/redis/redis.conf`映射到`/docker/redis/conf/redis.conf`，创建文件夹`mkdir -p /docker/redis/conf`(不存在)
   2. 数据文件夹`/data`映射到`/docker/redis/data`，创建文件夹`mkdir -p /docker/redis/data`(不存在)
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/redis/{conf,data}
touch /docker/redis/conf/redis.conf
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
 --restart=always \
 redis redis-server /etc/redis/redis.conf
```

- `redis-server /etc/redis/redis.conf`指定配置文件
