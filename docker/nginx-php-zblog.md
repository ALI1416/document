# nginx-php-zblog

## 网络桥接

- 创建nginx和php之间的桥接网络连接`docker network create nginx-php --driver bridge`

## PHP

1. 拉取镜像`docker pull bitnami/php-fpm`
2. 启动临时容器`docker run --name php -d bitnami/php-fpm`
3. 进入容器内部`docker exec -it php bash`查看要映射哪些内容
   1. 配置文件夹`/opt/bitnami/php/etc`映射到`/docker/php/conf`，复制文件`docker cp php:/opt/bitnami/php/etc /docker/php`，修改文件夹路径`mv /docker/php/etc /docker/php/conf`
   2. 数据文件夹`/app`映射到`/docker/app`
   3. 日志文件夹`/opt/bitnami/php/logs`映射到`/docker/php/log`，创建文件夹`mkdir -p /docker/php/log`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/php/log
docker cp php:/opt/bitnami/php/etc /docker/php
mv /docker/php/etc /docker/php/conf
```

5. 停止并删除临时容器`docker stop php && docker rm php`
6. 配置并启动容器

```sh
docker run -d --name php \
 --network nginx-php \
 -p 9000:9000 \
 -v /docker/php/conf:/opt/bitnami/php/etc \
 -v /docker/app:/app \
 -v /docker/php/log:/opt/bitnami/php/logs \
 --restart=always \
 bitnami/php-fpm
```

- `--network nginx-php`添加桥接网络

7. 创建文件`/docker/app/1.php`，内容为`<?php phpinfo();?>`

## nginx

1. 拉取镜像`docker pull nginx`
2. 启动临时容器`docker run --name nginx -d nginx`
3. 进入容器内部`docker exec -it nginx bash`查看要映射哪些内容
   1. 配置文件`/etc/nginx/nginx.conf`映射到`/docker/nginx/conf/nginx.conf`，复制文件`docker cp nginx:/etc/nginx/nginx.conf /docker/nginx/conf/nginx.conf`
   2. HTML文件夹`/app`映射到`/docker/app`，复制文件夹`docker cp nginx:/usr/share/nginx/html /docker`，修改文件夹路径`mv /docker/html /docker/app`(内部外部都要与php数据目录相同)
   3. 日志文件夹`/var/log/nginx`映射到`/docker/nginx/log`，创建文件夹`mkdir -p /docker/nginx/log`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/nginx/{conf,log}
docker cp nginx:/etc/nginx/nginx.conf /docker/nginx/conf/nginx.conf
docker cp nginx:/usr/share/nginx/html /docker
mv /docker/html /docker/app
```

5. 修改配置文件`/docker/nginx/conf/nginx.conf`

```ini
#用户
user nginx;
#工作进程数量
worker_processes auto;
#pid保存位置
pid       /run/nginx.pid;
#错误日志保存位置
error_log /var/log/nginx/error.log error;

events {
  #工作进程最大同时连接数
  worker_connections 1024;
}

http {
  #MIME类型
  include      /etc/nginx/mime.types;
  #默认MIME类型
  default_type application/octet-stream;
  #启用sendfile服务器可以直接从硬盘读取文件并发送到客户端，而不需要先把文件全部读到内存里
  sendfile    on;
  #启用tcp_nopush适用于大文件传输
  tcp_nopush  on;
  #启用tcp_nodelay适用于快速响应的小型数据包(不可与tcp_nopush同时使用)
  #tcp_nodelay on;
  #保活超时时间
  keepalive_timeout 65;
  #不显示nginx版本号
  server_tokens     off;
  #启用gzip压缩
  #gzip              on;

  #访问日志格式
  log_format main "$time_iso8601 [$remote_addr:$remote_port] [$status] $request_method $scheme://$host$request_uri";
  #访问日志保存位置
  access_log /var/log/nginx/access.log main;

  #http服务
  server {
    #监听端口
    listen      80;
    #服务名称
    server_name localhost;
    #根路径
    root  /app;

    #404跳转
    error_page 404 /404.html;

    #50x跳转
    error_page 500 502 503 504 /50x.html;

    #首页跳转
    location / {
      index index.html;
    }

    #PHP反向代理
    location ~ \.php$ {
      fastcgi_pass  php:9000;
      fastcgi_index index.php;
      fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
      include       fastcgi_params;
    }

  }

}
```

6. 创建`/docker/app/404.html`文件

```html
<!DOCTYPE html>
<html>
<head>
<title>404 Not Found</title>
</head>
<body>
<h1>404 Not Found</h1>
</body>
</html>
```

7. 停止并删除临时容器`docker stop nginx && docker rm nginx`
8. 配置并启动容器

```sh
docker run -d --name nginx \
 --network nginx-php \
 -p 80:80 \
 -v /docker/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
 -v /docker/app:/app \
 -v /docker/nginx/log:/var/log/nginx \
 --restart=always \
 nginx
```

9. 访问地址<http://127.0.0.1/>
10. 访问地址<http://127.0.0.1/1.php>

## Z-BlogPHP

1. 下载源码<https://www.zblogcn.com/zblogphp/>，并复制到`/docker/app`目录
2. 解压到`/docker/app/blog`目录`unzip Z-BlogPHP.zip -d blog`，并删除zip文件
3. 配置nginx

```ini
#首页跳转
location / {
  root  /app/blog;
  index index.html;
}

#PHP反向代理
location ~ \.php$ {
  root          /app/blog;
  fastcgi_pass  php:9000;
  fastcgi_index index.php;
  fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
  include       fastcgi_params;
}
```

4. 重启nginx`docker restart nginx`
5. 访问<http://localhost/blog/index.php>
