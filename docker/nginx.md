# nginx

1. 拉取nginx镜像`docker pull nginx`
2. 启动临时容器`docker run --name nginx -d nginx`
   1. `run`启动容器
   2. `--name nginx`命名为`nginx`
   3. `-d`后台运行
   4. `nginx`镜像名称`nginx`
3. 进入容器内部`docker exec -it nginx bash`查看要映射哪些内容
   1. 配置文件`/etc/nginx/nginx.conf`映射到`/docker/nginx/conf/nginx.conf`，创建文件夹`mkdir -p /docker/nginx/conf`，复制文件`docker cp nginx:/etc/nginx/nginx.conf /docker/nginx/conf`
   2. HTML文件夹`/usr/share/nginx/html`映射到`/docker/nginx/html`，创建文件夹`mkdir -p /docker/nginx/html`，复制文件夹`docker cp nginx:/usr/share/nginx/html /docker/nginx`
   3. 日志文件夹`/var/log/nginx`映射到`/docker/nginx/log`，创建文件夹`mkdir -p /docker/nginx/log`，文件夹内`access.log`和`error.log`为链接，需手动创建空文件`touch /docker/nginx/log/{access.log,error.log}`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/nginx/{conf,html,log}
docker cp nginx:/etc/nginx/nginx.conf /docker/nginx/conf
docker cp nginx:/usr/share/nginx/html /docker/nginx
touch /docker/nginx/log/{access.log,error.log}
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

6. 停止并删除临时容器`docker stop nginx && docker rm nginx`
7. 配置并启动容器

```sh
docker run -d --name nginx \
 -p 90:80 \
 -v /docker/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
 -v /docker/nginx/html:/usr/share/nginx/html \
 -v /docker/nginx/log:/var/log/nginx \
 --restart=always \
 nginx
```

- `-d`后台运行容器(detached模式)
- `--name nginx`指定容器名称为`nginx`
- `-p 90:80`映射宿主机`90`端口到容器`80`端口
- `-v /docker/nginx/conf/nginx.conf:/etc/nginx/nginx.conf`映射宿主机`/docker/nginx/conf/nginx.conf`文件到容器`/etc/nginx/nginx.conf`文件
- `--restart=always`容器意外退出时自动重启

8. 访问地址`http://127.0.0.1:90/`有内容显示，即启动成功
