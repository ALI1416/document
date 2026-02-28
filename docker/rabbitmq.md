# RabbitMQ

1. 拉取镜像`docker pull rabbitmq:management`(包含管理页面)
2. 启动临时容器`docker run --name rabbitmq -d rabbitmq:management`
3. 进入容器内部`docker exec -it rabbitmq bash`查看要映射哪些内容
   1. 配置文件夹`/etc/rabbitmq`映射到`/docker/rabbitmq/conf`，复制文件`docker cp rabbitmq:/etc/rabbitmq /docker/rabbitmq/conf`，修改文件夹路径`mv /docker/rabbitmq/rabbitmq /docker/rabbitmq/conf`
   2. 数据文件夹`/var/lib/rabbitmq`映射到`/docker/rabbitmq/data`，创建文件夹`mkdir -p /docker/rabbitmq/data`
   3. 日志文件夹`/var/log/rabbitmq`映射到`/docker/rabbitmq/log`，创建文件夹`mkdir -p /docker/rabbitmq/log`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/rabbitmq/{data,log}
docker cp rabbitmq:/etc/rabbitmq /docker/rabbitmq/conf
mv /docker/rabbitmq/rabbitmq /docker/rabbitmq/conf
```

5. 新增配置文件`/docker/rabbitmq/conf/rabbitmq.cnf`

```ini
```

6. 停止并删除临时容器`docker stop rabbitmq && docker rm rabbitmq`
7. 配置并启动容器

```sh
docker run -d --name rabbitmq \
 -p 5671:5671 \
 -p 5672:5672 \
 -p 15671:15671 \
 -p 15672:15672 \
 -p 4369:4369 \
 -p 25672:25672 \
 -v /docker/rabbitmq/conf:/etc/rabbitmq \
 -v /docker/rabbitmq/data:/var/lib/rabbitmq \
 -v /docker/rabbitmq/log:/var/log/rabbitmq \
 -e RABBITMQ_DEFAULT_USER=admin \
 -e RABBITMQ_DEFAULT_PASS=admin \
 --restart=always \
 rabbitmq:management
```

- `-p`
  - `5671`AMQP加密端口(TLS/SSL)
  - `5672`AMQP基础端口(未加密)
  - `15671`Web管理界面加密端口(HTTPS)
  - `15672`Web管理界面端口
  - `4369`集群节点发现端口
  - `25672`集群节点通信端口
- `-e RABBITMQ_DEFAULT_USER=admin`设置超级管理员账号为`admin`
- `-e RABBITMQ_DEFAULT_PASS=admin`设置超级管理员密码为`admin`
