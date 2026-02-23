# nginx

1. 创建多个nginx目录`mkdir -p /docker/nginx/{conf,html,log}`
2. 启动临时容器`docker run --name nginx -d nginx`
   1. `run`启动容器
   2. `--name nginx`命名为`nginx`
   3. `-d`后台运行
   4. `nginx`镜像名称`nginx`
3. 进入容器内部`docker exec -it nginx bash`查看要复制哪些内容
4. 退出容器`exit`
5. 复制配置文件、HTML目录到宿主机，创建日志文件(原目录`/var/log/nginx/`内容为链接)在宿主机

```sh
docker cp nginx:/etc/nginx/nginx.conf /docker/nginx/conf
docker cp nginx:/usr/share/nginx/html /docker/nginx
touch /docker/nginx/log/access.log
touch /docker/nginx/log/error.log
```

6. 编辑配置文件`/docker/nginx/conf/nginx.conf`

```conf
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
  # tcp_nodelay on;
  #保活超时时间
  keepalive_timeout 65;
  #不显示nginx版本号
  server_tokens     off;
  #启用gzip压缩
  # gzip              on;

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

    #404跳转
    error_page 404 /404.html;
    location = /404.html {
       root /usr/share/nginx/html;
    }

    #50x跳转
    error_page 500 502 503 504 /50x.html;
    location = /50x.html {
      root /usr/share/nginx/html;
    }

    #首页跳转
    location / {
      root  /usr/share/nginx/html;
      index index.html;
    }

  }

}
```

7. 停止并删除临时容器`docker stop nginx && docker rm nginx`
8. 配置并启动容器

```sh
docker run -d --name nginx \
 -p 90:80 \
 -v /docker/nginx/html:/usr/share/nginx/html \
 -v /docker/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
 -v /docker/nginx/log/access.log:/var/log/nginx/access.log \
 -v /docker/nginx/log/error.log:/var/log/nginx/error.log \
 --restart=always \
 nginx
```

- `-d`后台运行容器(detached模式)
- `--name nginx`指定容器名称为`nginx`
- `-p 90:80`映射宿主机`90`端口到容器`80`端口
- `-v /docker/nginx/html:/usr/share/nginx/html`映射宿主机`/docker/nginx/html`文件夹到容器`/usr/share/nginx/html`文件夹
- `--restart=always`容器意外退出时自动重启

9. 访问地址`http://127.0.0.1:90/`有内容显示，即启动成功
