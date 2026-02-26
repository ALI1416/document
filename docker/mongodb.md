# MongoDB

1. 拉取镜像`docker pull mongo`
2. 启动临时容器`docker run --name mongo -d mongo`
3. 进入容器内部`docker exec -it mongo bash`查看要映射哪些内容
   1. 配置文件`/etc/mongod.conf.orig`(该配置文件只是示例)映射到`/docker/mongo/conf/mongod.conf`，创建文件夹`mkdir -p /docker/mongo/conf`，复制文件`docker cp mongo:/etc/mongod.conf.orig /docker/mongo/conf`，修改文件名`mv /docker/mongo/conf/mongod.conf.orig /docker/mongo/conf/mongod.conf`
   2. 数据文件夹`/data/db`映射到`/docker/mongo/data`，创建文件夹`mkdir -p /docker/mongo/data`
   3. 日志文件夹`/var/log/mongo`映射到`/docker/mongo/log`，创建文件夹`mkdir -p /docker/mongo/log`，修改文件夹权限`chown -R 999:999 /docker/mongo/log`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/mongo/{conf,data,log}
docker cp mongo:/etc/mongod.conf.orig /docker/mongo/conf
mv /docker/mongo/conf/mongod.conf.orig /docker/mongo/conf/mongod.conf
chown -R 999:999 /docker/mongo/log
```

5. 修改配置文件`/docker/mongo/conf/mongod.conf`

```yml
# 数据储存
storage:
  dbPath: /data/db
  journal:
    enabled: true
# 系统日志
systemLog:
  destination: file
  logAppend: true
  path: /var/log/mongodb/mongod.log
# 允许所有IP访问
net:
  port: 27017
  bindIp: 0.0.0.0
# 开启密码验证
security:
  authorization: enabled
```

6. 停止并删除临时容器`docker stop mongo && docker rm mongo`
7. 配置并启动容器

```sh
docker run -d --name mongo \
 -p 27017:27017 \
 -v /docker/mongo/conf/mongod.conf:/etc/mongod.conf \
 -v /docker/mongo/data:/data/db \
 -v /docker/mongo/log:/var/log/mongodb \
 -e MONGO_INITDB_ROOT_USERNAME=admin \
 -e MONGO_INITDB_ROOT_PASSWORD=admin \
 --restart=always \
 mongo --config /etc/mongod.conf
```

- `-e MONGO_INITDB_ROOT_USERNAME=admin`设置超级管理员账号为`admin`
- `-e MONGO_INITDB_ROOT_PASSWORD=admin`设置超级管理员密码为`admin`
- `--config /etc/mongod.conf`指定配置文件
