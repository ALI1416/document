# nginx

## 默认配置
```ini
# 用户和组。windows下不指定
#user  nobody;

# worker进程的数量
worker_processes  1;

# 日志存放位置
#error_log  logs/error.log;
#error_log  logs/error.log  notice;
#error_log  logs/error.log  info;

# pid存放位置
#pid        logs/nginx.pid;

# 事件区
events {
    worker_connections  1024; # 每个worker进程支持的最大连接数
}

# http区
http {
    include       mime.types; # 支持的媒体类型库文件
    default_type  application/octet-stream; # 默认媒体类型

    # 日志格式
    #log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
    #                  '$status $body_bytes_sent "$http_referer" '
    #                  '"$http_user_agent" "$http_x_forwarded_for"';

    # 日志存放位置
    #access_log  logs/access.log  main;

    sendfile        on; # 开启高效传输模式
    #tcp_nopush     on; # 允许或禁止使用socke的TCP_CORK的选项，此选项仅在使用sendfile的时候使用

    #keepalive_timeout  0;
    keepalive_timeout  65; # 连接超时

    #gzip  on; # 压缩

    # 第一个server区
    server {
        listen       80; # 服务端口
        server_name  localhost; # 服务主机名

        # 字符集
        #charset koi8-r;

        # 日志存放位置
        #access_log  logs/host.access.log  main;

        # 第一个location区
        location / { # 配置/路径
            root   html; # 文件位置
            index  index.html index.htm; # 默认主页文件，多个文件用空格隔开
        }

        #error_page  404              /404.html;

        # redirect server error pages to the static page /50x.html
        #
        error_page   500 502 503 504  /50x.html; # 指定错误状态码对应的错误页面
        # 第二个区块
        location = /50x.html { # 页面为50x.html
            root   html; # 文件位置
        }

        # proxy the PHP scripts to Apache listening on 127.0.0.1:80
        #
        #location ~ \.php$ {
        #    proxy_pass   http://127.0.0.1;
        #}

        # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
        #
        #location ~ \.php$ {
        #    root           html;
        #    fastcgi_pass   127.0.0.1:9000;
        #    fastcgi_index  index.php;
        #    fastcgi_param  SCRIPT_FILENAME  /scripts$fastcgi_script_name;
        #    include        fastcgi_params;
        #}

        # deny access to .htaccess files, if Apache's document root
        # concurs with nginx's one
        #
        #location ~ /\.ht {
        #    deny  all;
        #}
    }


    # another virtual host using mix of IP-, name-, and port-based configuration
    #
    #server {
    #    listen       8000;
    #    listen       somename:8080;
    #    server_name  somename  alias  another.alias;

    #    location / {
    #        root   html;
    #        index  index.html index.htm;
    #    }
    #}


    # HTTPS server
    #
    #server {
    #    listen       443 ssl;
    #    server_name  localhost;

    #    ssl_certificate      cert.pem;
    #    ssl_certificate_key  cert.key;

    #    ssl_session_cache    shared:SSL:1m;
    #    ssl_session_timeout  5m;

    #    ssl_ciphers  HIGH:!aNULL:!MD5;
    #    ssl_prefer_server_ciphers  on;

    #    location / {
    #        root   html;
    #        index  index.html index.htm;
    #    }
    #}

}
```

## 配置详解
### 变量
官方文档地址：https://nginx.org/en/docs/varindex.html

| 常用 | 变量名                      | 解释                                  | 示例                        |
| ---- | --------------------------- | ------------------------------------- | --------------------------- |
| ■■   | $remote_addr                | 客户端IP地址                          | 127.0.0.1                   |
| ■    | $remote_port                | 客户端端口                            | 64251                       |
|      | $remote_user                | 客户端用户名                          | -                           |
|      | $hostname                   | 客户端设备名称                        | desktop-i31g4j9             |
|      | $binary_remote_addr         | 客户端地址(二进制)                    | \x7F\x00\x00\x01            |
|      | $ancient_browser            | 客户端是古老浏览器(否为1)             | 1                           |
|      | $modern_browser             | 客户端浏览器modern的值                | ,1632990131.623             |
|      | $http2                      | 客户端协商协议标识符                  | -                           |
|      |                             | (HTTP/2(TLS为h2,明文TCP为h2c)否为空)  |                             |
|      | $msec                       | 客户端是否MSIE浏览器(是为1)           | 1                           |
| ■■   | $time_iso8601               | 客户端访问时间(iso8601)               | 2021-09-30T17:01:24+08:00   |
|      | $time_local                 | 客户端访问时间(本地)                  | 30/Sep/2021:14:02:16 +0800  |
| ■    | $request                    | 请求详情                              | GET /a?id=1 HTTP/1.1        |
| ■■   | $request_method             | 请求方法(GET、POST等)                 | GET                         |
| ■■   | $request_uri                | 请求地址(含参)                        | /a?id=1                     |
| ■■   | $uri和$document_uri         | 请求地址(无参)                        | /a                          |
| ■■   | $args和$query_string        | 请求参数                              | id=1                        |
| ■■   | $arg_xxx                    | 请求参数xxx的值                       | 1                           |
|      | $server_protocol            | 请求协议(HTTP/1.0或HTTP/1.1)          | HTTP/1.1                    |
| ■    | $scheme                     | 请求方案(http或https)                 | http                        |
|      | $is_args                    | 请求是否有参数(是为?否为空)           | ?                           |
|      | $request_body               | 请求正文                              | -                           |
|      | $request_body_file          | 请求主体信息的临时文件名              | -                           |
|      | $https                      | 请求是否是https(是为on否为空)         | on                          |
|      | $request_time               | 请求总时间                            | 0.006                       |
|      | $request_completion         | 请求是否结束(是为OK否为空)            | OK                          |
|      | $request_id                 | 由16个随机字节生成的唯一请求标识符    | 略                          |
|      | $request_length             | 请求长度(含请求行、头和正文)          | 674                         |
|      | $http_referer               | 请求头Referer                         | http://localhost/           |
| ■■   | $http_user_agent            | 请求头User-Agent                      | 略                          |
|      | $host                       | 请求头Host                            | localhost                   |
|      | $content_length             | 请求头Content-Length                  | -                           |
|      | $content_type               | 请求头Content-Type                    | -                           |
| ■■   | $http_cookie                | 请求头Cookie                          | 略                          |
| ■■   | $cookie_xxx                 | 请求头Cookie中xxx的值                 | 1                           |
| ■■   | $http_xxx                   | 请求头xxx的值                         | -                           |
|      | $invalid_referer            | 请求头Referer是否有效(是为空否为1)    | -                           |
| ■■   | $status                     | 响应头状态码                          | 200                         |
|      | $body_bytes_sent            | 响应头Content-Length                  | 964                         |
|      | $sent_http_xxx              | 响应头xxx的值                         | -                           |
|      | $sent_trailer_xxx           | 响应尾xxx的值                         | -                           |
|      | $document_root              | nginx响应目录                         | D:\nginx/html               |
|      | $realpath_root              | nginx响应目录(绝对路径)               | D:\nginx/html               |
|      | $request_filename           | nginx响应文件                         | D:\nginx/html/index.html    |
|      | $nginx_version              | nginx版本号                           | 1.20.1                      |
|      | $pid                        | nginx运行的pid                        | 2548                        |
|      | $pipe                       | 管道(是为p否为.)                      | .                           |
|      | $server_addr                | 服务器地址                            | 127.0.0.1                   |
|      | $server_name                | 服务器名称                            | localhost                   |
|      | $server_port                | 服务器端口号                          | 80                          |
|      | $bytes_sent                 | 服务器发送字节数                      | 312                         |
|      | $limit_rate                 | 限制连接速率                          | 0                           |
|      | $limit_conn_status          | 保留限制连接数的结果                  | -                           |
|      | $connection                 | 连接序列号                            | 55                          |
|      | $connection_requests        | 当前通过连接发出的请求数              | 3                           |
|      | $connection_time            | 连接时间                              | 52.756                      |
|      | $connections_active         | 当前活动客户端连接数(含等待连接)      | 2                           |
|      | $connections_reading        | nginx正在读取请求头的当前连接数       | 0                           |
|      | $connections_waiting        | 当前等待请求的空闲客户端连接数        | 1                           |
|      | $connections_writing        | nginx将响应写回客户端的当前连接数     | 0                           |
|      | $date_gmt                   | 当前时间(GMT)                         | 略                          |
|      | $date_local                 | 当前时间(本地)                        | 略                          |
|      | $fastcgi_path_info          | php专用path_info                      | -                           |
|      | $fastcgi_script_name        | php专用script_name                    | /a                          |
|      | $gzip_ratio                 | 压缩比例                              | -                           |
|      | $realip_remote_addr         | 保留原始客户端地址                    | 127.0.0.1                   |
|      | $realip_remote_port         | 保留原始客户端端口                    | 56899                       |
|      | $secure_link                | 链接检查的状态                        | -                           |
|      | $secure_link_expires        | 请求中传递的链接的生存期              | -                           |
|      | $slice_range                | HTTP字节切片范围                      | -                           |
|      | $uid_got                    | cookie名称和收到的客户端标识符        | -                           |
|      | $uid_reset                  | 非0且非空客户端标识符被重置           | -                           |
|      | $uid_set                    | cookie名称和已发送的客户端标识符      | -                           |
|      | $proxy_add_x_forwarded_for  | 代理请求头X-Forwarded-For             | 127.0.0.1                   |
|      |                             | 不存在代理$remote_addr                |                             |
|      | $proxy_host                 | 代理服务器的名称和端口                | localhost:8080              |
|      | $proxy_port                 | 代理服务器端口                        | 8080                        |
|      | $proxy_protocol_addr        | 代理协议头中的客户端地址              | -                           |
|      | $proxy_protocol_port        | 代理协议头中的客户端端口              | -                           |
|      | $proxy_protocol_server_addr | 代理协议头中的服务器地址              | -                           |
|      | $proxy_protocol_server_port | 代理协议头中的服务器端口              | -                           |
|      | $upstream_addr              | upstream地址                          | 127.0.0.1:8080              |
|      | $upstream_bytes_received    | upstream接收字节数                    | 1250                        |
|      | $upstream_bytes_sent        | upstream发送字节数                    | 482                         |
|      | $upstream_cache_status      | upstream缓存状态                      | -                           |
|      | $upstream_connect_time      | upstream建立连接时间                  | 0.000                       |
|      | $upstream_cookie_xxx        | upstream指定Cookie中xxx的值           | -                           |
|      | $upstream_header_time       | upstream接收响应头时间                | 0.003                       |
|      | $upstream_http_xxx          | upstream指定响应中xxx的值             |                             |
|      | $upstream_response_length   | upstream响应长度                      | 946                         |
|      | $upstream_response_time     | upstream响应时间                      | 0.006                       |
|      | $upstream_status            | upstream状态                          | 200                         |
|      | $upstream_trailer_xxx       | upstream指定响应尾中xxx的值           |                             |
|      | $ssl_cipher                 | 客户端使用的SSL算法                   | ECDHE-RSA-AES256-GCM-SHA384 |
|      | $ssl_ciphers                | 客户端支持的的SSL算法                 | 略                          |
|      | $ssl_client_cert            | SSL客户端证书(PEM格式)                | -                           |
|      | $ssl_client_escaped_cert    | SSL客户端证书(PEM格式(urlencoded))    | -                           |
|      | $ssl_client_fingerprint     | SSL客户端证书的SHA1                   | -                           |
|      | $ssl_client_i_dn            | SSL客户端证书的issuer DN(RFC 2253)    | -                           |
|      | $ssl_client_i_dn_legacy     | SSL客户端证书的issuer DN              | -                           |
|      | $ssl_client_raw_cert        | SSL客户端证书(PEM格式)                | -                           |
|      | $ssl_client_s_dn            | SSL客户端证书的subject DN(RFC 2253)   | -                           |
|      | $ssl_client_s_dn_legacy     | SSL客户端证书的subject DN             | -                           |
|      | $ssl_client_serial          | SSL客户端证书的序列号                 | -                           |
|      | $ssl_client_v_end           | SSL客户端证书的结束日期               | -                           |
|      | $ssl_client_v_remain        | SSL客户端证书还有多久天过期           | -                           |
|      | $ssl_client_v_start         | SSL客户端证书的开始日期               | -                           |
|      | $ssl_client_verify          | SSL客户端证书的验证结果               | NONE                        |
|      | $ssl_curves                 | 客户端支持的曲线                      | 略                          |
|      | $ssl_early_data             | TLS1.3早期数据握手未完成(是为1否为空) | -                           |
|      | $ssl_protocol               | 客户端使用的SSL版本号                 | TSLv1.2                     |
|      | $ssl_server_name            | 请求的服务器名称                      | localhost                   |
|      | $ssl_session_id             | SSL连接的session id                   | -                           |
|      | $ssl_session_reused         | SSL session被重用(是为r否为.)         | .                           |

### 代理
```ini
location / {
    proxy_pass http://localhost:8080;
    proxy_set_header X-Real-IP $remote_addr;
}
```

### SSL
cert文件夹放到conf路径下
```ini
server {
    listen       443 ssl;
    server_name  localhost;
    ssl_certificate      cert/404z.cn.pem;
    ssl_certificate_key  cert/404z.cn.key;
    ssl_session_cache    shared:SSL:1m;
    ssl_session_timeout  5m;
    ssl_ciphers  HIGH:!aNULL:!MD5;
    ssl_prefer_server_ciphers  on;
    location / {
        root   html;
        index  index.html index.htm;
    }
}
```
