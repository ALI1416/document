# MySQL

1. 拉取mysql镜像`docker pull mysql`
2. 启动临时容器`docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -d mysql`
   1. `-e MYSQL_ROOT_PASSWORD=root`设置账号为`root`的密码为`root`
3. 进入容器内部`docker exec -it mysql bash`查看要映射哪些内容
   1. 配置文件`/etc/mysql/my.cnf`映射到`/docker/mysql/conf/my.cnf`，创建文件夹`mkdir -p /docker/nginx/conf`，复制文件`docker cp nginx:/etc/mysql/my.cnf /docker/nginx/conf`
   2. 数据文件夹`/var/lib/mysql`映射到`/docker/mysql/data`，创建文件夹`mkdir -p /docker/mysql/data`
   3. 日志文件夹`/var/log/mysql`映射到`/docker/mysql/log`，创建文件夹`mkdir -p /docker/mysql/log`(需要开启binlog才会显示该文件夹)
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/mysql/{conf,data,log}
docker cp mysql:/etc/mysql/my.cnf /docker/mysql/conf
```

5. 修改配置文件`/docker/mysql/conf/my.cnf`

```ini
[mysqld]
pid-file = /var/run/mysqld/mysqld.pid
socket = /var/run/mysqld/mysqld.sock
datadir = /var/lib/mysql
secure-file-priv = NULL
skip-host-cache
skip-name-resolve

port = 3306
max_connections = 1024
max_user_connections = 512
wait_timeout = 600
character-set-server = utf8mb4
collation_server = utf8mb4_general_ci
default-storage-engine = InnoDB

# InnoDB的缓冲池大小
innodb_buffer_pool_size = 1024M

# 密码兼容格式
#default_authentication_plugin = mysql_native_password

# 分词长度
ft_min_word_len = 1
innodb_ft_min_token_size = 1

# 跳过日志记录
skip-log-bin

# 跳过权限验证(忘记密码时使用)
#skip-grant-tables

[mysql]
default-character-set = utf8mb4

[client]
port = 3306
default-character-set = utf8mb4
```

6. 停止并删除临时容器`docker stop mysql && docker rm mysql`
7. 配置并启动容器

```sh
docker run -d --name mysql \
 -p 3306:3306 \
 -v /docker/mysql/conf/my.cnf:/etc/mysql/my.cnf \
 -v /docker/mysql/data:/var/lib/mysql \
 -v /docker/mysql/log:/var/log/mysql \
 -e MYSQL_ROOT_PASSWORD=root \
 --privileged=true \
 --restart=always \
 mysql
```

- `-e MYSQL_ROOT_PASSWORD=root`设置账号为`root`的密码为`root`
- `--privileged=true`赋予容器权限修改宿主文件权利

8. 进入容器内部`docker exec -it mysql bash`，进入mysql`mysql -u root -p`，输入密码`root`
9. 创建用户名`ali`密码`Alibaba2021!`，并赋予全部权限(用户`root`也具有全部权限)

```sql
DROP USER IF EXISTS 'ali'@'%';
CREATE USER 'ali'@'%' IDENTIFIED BY 'Alibaba2021!';
GRANT ALL PRIVILEGES ON *.* TO 'ali'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```
