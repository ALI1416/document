# nginx
适用于`1.20.1`及以上版本  
官方文档地址：https://nginx.org/en/docs/

## 配置详解
### 变量

| 常用 | 变量名                      | 解释                                  | 示例                        |
| ---- | --------------------------- | ------------------------------------- | --------------------------- |
| ■■   | $remote_addr                | 客户端IP地址                          | 127.0.0.1                   |
| ■    | $remote_port                | 客户端端口                            | 64251                       |
|      | $remote_user                | 客户端用户名                          | -                           |
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
| ■■   | &#36;uri和$document_uri     | 请求地址(无参)                        | /a                          |
| ■■   | &#36;args和$query_string    | 请求参数                              | id=1                        |
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
|      | $bytes_sent                 | 响应长度                              | 312                         |
|      | $body_bytes_sent            | 响应长度(不含响应头)                  | 964                         |
| ■■   | $status                     | 响应头状态码                          | 200                         |
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
|      | $hostname                   | 服务器设备名称                        | desktop-i31g4j9             |
|      | $limit_rate                 | 限制连接速率                          | 0                           |
|      | $limit_conn_status          | 保留限制连接数的结果                  | -                           |
|      | $connection                 | 连接序列号                            | 55                          |
|      | $connection_requests        | 当前通过连接发出的请求数              | 3                           |
|      | $connection_time            | 连接时间                              | 52.756                      |
|      | $connections_active         | 当前活动客户端连接数(含等待连接)      | 2                           |
|      | $connections_waiting        | 当前等待请求的空闲客户端连接数        | 1                           |
|      | $connections_reading        | nginx正在读取请求头的当前连接数       | 0                           |
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
|      | $uid_reset                  | 非0且非空客户端标识符被重置           | -                           |
|      | $uid_got                    | cookie名称和收到的客户端标识符        | -                           |
|      | $uid_set                    | cookie名称和已发送的客户端标识符      | -                           |
|      | $proxy_add_x_forwarded_for  | 代理请求头X-Forwarded-For             | 127.0.0.1                   |
|      |                             | 不存在则为$remote_addr                |                             |
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
|      | $ssl_protocol               | 客户端使用的SSL版本号                 | TSLv1.2                     |
|      | $ssl_curves                 | 客户端支持的曲线                      | 略                          |
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
|      | $ssl_server_name            | SSL请求的服务器名称                   | localhost                   |
|      | $ssl_session_id             | SSL session id                        | -                           |
|      | $ssl_session_reused         | SSL session被重用(是为r否为.)         | .                           |
|      | $ssl_early_data             | TLS1.3早期数据握手未完成(是为1否为空) | -                           |

### 核心模块

| 常用 | 名称                    | 用途                                            |
| ---- | ----------------------- | ----------------------------------------------- |
|      | accept_mutex            | 工件依次连接                                    |
|      | accept_mutex_delay      | 工件连接最长时间                                |
|      | daemon                  | 守护进程                                        |
|      | debug_connection        | 调试                                            |
|      | debug_points            | 调试                                            |
|      | env                     | 环境                                            |
| ■■   | error_log               | 错误日志                                        |
|      | events                  | 事件                                            |
| ■■   | include                 | 包含                                            |
|      | load_module             | 加载动态模块                                    |
|      | lock_file               | 锁定文件名称的前缀                              |
|      | master_process          | 启动工作进程                                    |
|      | multi_accept            | 是否一次接受所有新连接                          |
|      | pcre_jit                | 正则表达式即时编译                              |
|      | pid                     | 进程ID                                          |
|      | ssl_engine              | 硬件SSL加速器的名称                             |
|      | thread_pool             | 线程池                                          |
|      | timer_resolution        | 减少工作进程中的计时器分辨率                    |
|      | use                     | 指定要使用的连接处理method                      |
|      | user                    | 工作进程使用的定义user和group凭据               |
|      | worker_aio_requests     | 单个工作进程未完成的异步I/O操作的最大值         |
|      | worker_connections      | 工作进程可以打开的最大同时连接数                |
|      | worker_cpu_affinity     | 工作进程绑定到CPU集                             |
|      | worker_priority         | 工作进程的调度优先级                            |
|      | worker_processes        | 工作进程的数量                                  |
|      | worker_rlimit_core      | 更改RLIMIT_CORE工作进程的核心文件的最大大小限制 |
|      | worker_rlimit_nofile    | 更改RLIMIT_NOFILE工作进程的最大打开文件数限制   |
|      | worker_shutdown_timeout | 正常关闭工作进程配置超时                        |
|      | working_directory       | 工作进程的当前工作目录                          |

### ngx_http_core_module模块

| 常用 | 名称                          | 用途                                                  |
| ---- | ----------------------------- | ----------------------------------------------------- |
|      | absolute_redirect             | 绝对重定向                                            |
|      | aio                           | 异步文件I/O                                           |
|      | aio_write                     | aio用于写入文件                                       |
|      | alias                         | 实际访问文件路径不会拼接URL中的路径                   |
|      | auth_delay                    | 认证延迟，防止时序攻击                                |
|      | chunked_transfer_encoding     | 分块传输编码                                          |
|      | client_body_buffer_size       | 客户端请求正文的缓冲区大小                            |
|      | client_body_in_file_only      | 客户端请求正文保存到文件中                            |
|      | client_body_in_single_buffer  | 客户端请求正文保存在单个缓冲区中                      |
|      | client_body_temp_path         | 客户端请求正文的临时文件的目录                        |
|      | client_body_timeout           | 客户端请求正文的超时时间                              |
|      | client_header_buffer_size     | 客户端请求标头的缓冲区大小                            |
|      | client_header_timeout         | 客户端请求标头的超时时间                              |
|      | client_max_body_size          | 客户端请求正文的最大允许大小                          |
|      | connection_pool_size          | 精确调整每个连接的内存分配                            |
|      | default_type                  | 定义响应的默认MIME类型                                |
|      | directio                      | 启用O_DIRECT标志                                      |
|      | directio_alignment            | directio对齐大小                                      |
|      | disable_symlinks              | 打开文件时应如何处理符号链接                          |
| ■■   | error_page                    | 错误显示的URI                                         |
|      | etag                          | 静态资源的ETag响应头字段的自动生成                    |
| ■■   | http                          | HTTP服务器指令的配置文件上下文                        |
|      | if_modified_since             | 响应的修改时间与请求头If-Modified-Since的时间进行比较 |
|      | ignore_invalid_headers        | 控制是否应忽略具有无效名称的标题字段                  |
|      | internal                      | 给定位置只能用于内部请求                              |
|      | keepalive_disable             | 禁用与行为不当的浏览器的保持活动连接                  |
|      | keepalive_requests            | 保持活动连接提供的最大请求数                          |
|      | keepalive_time                | 保持活动连接处理请求的最长时间                        |
|      | keepalive_timeout             | 保持活动连接将在服务器端保持打开状态超时时间          |
|      | large_client_header_buffers   | 读取大型客户端请求标头的缓冲区的最大数量和大小        |
|      | limit_except                  | 允许的HTTP方法(GET、POST等)                           |
|      | limit_rate                    | 限制对客户端的响应传输速率                            |
|      | limit_rate_after              | limit_rate初始值                                      |
|      | lingering_close               | 控制nginx如何关闭客户端连接                           |
|      | lingering_time                | lingering_close最长时间                               |
|      | lingering_timeout             | lingering_close超时事件                               |
| ■■   | listen                        | 设置IP的地址和端口                                    |
| ■■   | location                      | 根据请求URI设置匹配                                   |
|      | log_not_found                 | 找不到文件的错误记录                                  |
|      | log_subrequest                | 子请求记录                                            |
|      | max_ranges                    | 限制字节范围请求中允许的最大范围数                    |
|      | merge_slashes                 | 将URI中的两个或多个相邻斜杠压缩为单个斜杠             |
|      | msie_padding                  | 状态大于400的MSIE客户端的响应添加注释增加到512字节    |
|      | msie_refresh                  | 为MSIE客户端发出刷新而不是重定向                      |
|      | open_file_cache               | 配置可以存储的缓存                                    |
|      | open_file_cache_errors        | 文件查找错误的缓存                                    |
|      | open_file_cache_min_uses      | 文件访问的最小值                                      |
|      | open_file_cache_valid         | 验证open_file_cache的时间                             |
|      | output_buffers                | 磁盘读取响应的缓冲区的大小                            |
|      | port_in_redirect              | 绝对重定向中指定端口                                  |
|      | postpone_output               | 客户端数据的传输将被推迟                              |
|      | read_ahead                    | 设置处理文件时内核的预读取量                          |
|      | recursive_error_pages         | error_page多次重定向                                  |
|      | request_pool_size             | 准确调整每个请求的内存分配                            |
|      | reset_timedout_connection     | 重置超时连接和使用非标准代码444关闭的连接             |
|      | resolver                      | 将上游服务器的名称解析为地址的名称服务器              |
|      | resolver_timeout              | 名称解析超时时间                                      |
|      | root                          | 实际访问文件路径会拼接URL中的路径                     |
|      | satisfy                       | 至少1个指定模块允许访问，则允许访问                   |
|      | send_lowat                    | 最小化客户端套接字上的发送操作数                      |
|      | send_timeout                  | 传输响应给客户端的超时时间                            |
|      | sendfile                      | 启用或禁用sendfile()                                  |
|      | sendfile_max_chunk            | 限制可以在单个sendfile()调用中传输的数据量            |
|      | server                        | 设置虚拟服务器的配置                                  |
|      | server_name                   | 设置虚拟服务器的名称                                  |
|      | server_name_in_redirect       | 绝对重定向中，由server_name指定主服务器名称的使用     |
|      | server_names_hash_bucket_size | 设置服务器名称哈希表的存储桶大小                      |
|      | server_names_hash_max_size    | 设置服务器名称哈希表的最大值                          |
|      | server_tokens                 | 错误页面和响应标头字段中发出nginx版本                 |
|      | subrequest_output_buffer_size | 设置用于存储子请求的响应主体的缓冲区的                |
|      | tcp_nodelay                   | TCP_NODELAY选项的使用                                 |
|      | tcp_nopush                    | TCP_NOPUSH选项的使用                                  |
|      | try_files                     | 按指定顺序检查文件是否存在                            |
|      | types                         | 将文件扩展名映射到MIME类型的响应                      |
|      | types_hash_bucket_size        | 设置类型哈希表的桶大小                                |
|      | types_hash_max_size           | 设置类型哈希表的最大值                                |
|      | underscores_in_headers        | 客户端请求标头字段中使用下划线                        |
|      | variables_hash_bucket_size    | 设置变量哈希表的桶大小                                |
|      | variables_hash_max_size       | 设置变量哈希表的最大值                                |

### ngx_http_access_module模块
该ngx_http_access_module模块允许限制对某些客户端地址的访问。

| 常用 | 名称  | 用途 |
| ---- | ----- | ---- |
| ■■   | allow | 允许 |
| ■■   | deny  | 拒绝 |

### ngx_http_index_module模块
该ngx_http_index_module模块处理请求以斜杠字符('/')结束。

| 常用 | 名称  | 用途 |
| ---- | ----- | ---- |
| ■■   | index | 索引 |

### ngx_http_log_module模块
该ngx_http_log_module模块中指定的格式写入请求的日志。
请求记录在处理结束的位置的上下文中。如果在请求处理期间发生内部重定向，它可能与原始位置不同。

| 常用 | 名称                | 用途                                   |
| ---- | ------------------- | -------------------------------------- |
| ■■   | access_log          | 日志路径、格式和配置                   |
| ■    | log_format          | 指定日志格式                           |
|      | open_log_file_cache | 存储名称包含变量的常用日志的文件描述符 |

### ngx_http_proxy_module模块
该ngx_http_proxy_module模块允许将请求传递到另一台服务器。

| 常用 | 名称                           | 用途 |
| ---- | ------------------------------ | ---- |
|      | proxy_bind                     |      |
|      | proxy_buffer_size              |      |
|      | proxy_buffering                |      |
|      | proxy_buffers                  |      |
|      | proxy_busy_buffers_size        |      |
|      | proxy_cache                    |      |
|      | proxy_cache_background_update  |      |
|      | proxy_cache_bypass             |      |
|      | proxy_cache_convert_head       |      |
|      | proxy_cache_key                |      |
|      | proxy_cache_lock               |      |
|      | proxy_cache_lock_age           |      |
|      | proxy_cache_lock_timeout       |      |
|      | proxy_cache_max_range_offset   |      |
|      | proxy_cache_methods            |      |
|      | proxy_cache_min_uses           |      |
|      | proxy_cache_path               |      |
|      | proxy_cache_purge              |      |
|      | proxy_cache_revalidate         |      |
|      | proxy_cache_use_stale          |      |
|      | proxy_cache_valid              |      |
|      | proxy_connect_timeout          |      |
|      | proxy_cookie_domain            |      |
|      | proxy_cookie_flags             |      |
|      | proxy_cookie_path              |      |
|      | proxy_force_ranges             |      |
|      | proxy_headers_hash_bucket_size |      |
|      | proxy_headers_hash_max_size    |      |
|      | proxy_hide_header              |      |
|      | proxy_http_version             |      |
|      | proxy_ignore_client_abort      |      |
|      | proxy_ignore_headers           |      |
|      | proxy_intercept_errors         |      |
|      | proxy_limit_rate               |      |
|      | proxy_max_temp_file_size       |      |
|      | proxy_method                   |      |
|      | proxy_next_upstream            |      |
|      | proxy_next_upstream_timeout    |      |
|      | proxy_next_upstream_tries      |      |
|      | proxy_no_cache                 |      |
| ■■   | proxy_pass                     |      |
|      | proxy_pass_header              |      |
|      | proxy_pass_request_body        |      |
|      | proxy_pass_request_headers     |      |
|      | proxy_read_timeout             |      |
|      | proxy_redirect                 |      |
|      | proxy_request_buffering        |      |
|      | proxy_send_lowat               |      |
|      | proxy_send_timeout             |      |
|      | proxy_set_body                 |      |
| ■■   | proxy_set_header               |      |
|      | proxy_socket_keepalive         |      |
|      | proxy_ssl_certificate          |      |
|      | proxy_ssl_certificate_key      |      |
|      | proxy_ssl_ciphers              |      |
|      | proxy_ssl_conf_command         |      |
|      | proxy_ssl_crl                  |      |
|      | proxy_ssl_name                 |      |
|      | proxy_ssl_password_file        |      |
|      | proxy_ssl_protocols            |      |
|      | proxy_ssl_server_name          |      |
|      | proxy_ssl_session_reuse        |      |
|      | proxy_ssl_trusted_certificate  |      |
|      | proxy_ssl_verify               |      |
|      | proxy_ssl_verify_depth         |      |
|      | proxy_store                    |      |
|      | proxy_store_access             |      |
|      | proxy_temp_file_write_size     |      |
|      | proxy_temp_path                |      |

### ngx_http_rewrite_module模块
该ngx_http_rewrite_module模块用于使用PCRE正则表达式更改请求URI、返回重定向和有条件地选择配置。

| 常用 | 名称                        | 用途 |
| ---- | --------------------------- | ---- |
|      | break                       |      |
|      | if                          |      |
|      | return                      |      |
| ■■   | rewrite                     |      |
|      | rewrite_log                 |      |
|      | set                         |      |
|      | uninitialized_variable_warn |      |

### ngx_http_upstream_module模块
该ngx_http_upstream_module模块用于定义可由proxy_pass、fastcgi_pass、uwsgi_pass、scgi_pass、memcached_pa​​ss和grpc_pass指令引用的服务器组。

| 常用 | 名称                 | 用途 |
| ---- | -------------------- | ---- |
| ■■   | upstream             |      |
|      | server               |      |
|      | zone                 |      |
|      | state                |      |
|      | hash                 |      |
|      | ip_hash              |      |
|      | keepalive            |      |
|      | keepalive_requests   |      |
|      | keepalive_time       |      |
|      | keepalive_timeout    |      |
|      | ntlm                 |      |
|      | least_conn           |      |
|      | least_time           |      |
|      | queue                |      |
|      | random               |      |
|      | resolver             |      |
|      | resolver_timeout     |      |
|      | sticky               |      |
|      | sticky_cookie_insert |      |

### 其他模块
#### ngx_http_addition_module模块
该ngx_http_addition_module模块是一个过滤器，用于在响应前后添加文本。默认情况下不构建此模块，应使用--with-http_addition_module配置参数启用它。

#### ngx_http_api_module模块
该ngx_http_api_module模块提供了REST API，用于访问各种状态信息、即时配置上游服务器组以及管理键值对，而无需重新配置nginx。  
该模块取代了ngx_http_status_module和ngx_http_upstream_conf_module模块。  
使用PATCHorPOST方法时，请确保负载不超过读取客户端请求正文的缓冲区大小，否则可能会返回413(Request Entity Too Large)错误。

#### ngx_http_auth_basic_module模块
该ngx_http_auth_basic_module模块允许通过使用`HTTP基本身份验证`协议验证用户名和密码来限制对资源的访问。  
访问也可以通过地址、子请求的结果或JWT进行限制。通过地址和密码访问的同时限制由满足指令控制。

#### ngx_http_auth_jwt_module模块
该ngx_http_auth_jwt_module通过验证所提供的模块实现客户机授权JSON网络令牌使用指定键(JWT)。该模块支持JSON Web签名(JWS)、JSON Web加密(JWE)和嵌套JWT。该模块可用于OpenID Connect身份验证。

#### ngx_http_auth_request_module模块
该ngx_http_auth_request_module模块根据子请求的结果实现客户端授权。如果子请求返回2xx响应码，则允许访问。如果返回401或403，则访问被拒绝并返回相应的错误代码。子请求返回的任何其他响应代码都被视为错误。  
对于401错误，客户端还会从子请求响应中收到`WWW-Authenticate`标头。  
默认情况下不构建此模块，应使用--with-http_auth_request_module配置参数启用它。

#### ngx_http_autoindex_module模块
该ngx_http_autoindex_module模块处理以斜杠字符('/')结尾的请求并生成目录列表。

#### ngx_http_browser_module模块
该ngx_http_browser_module模块创建变量，其值取决于`User-Agent`请求标头字段的值。

#### ngx_http_charset_module模块
该ngx_http_charset_module模块将指定的字符集添加到`Content-Type`响应头字段中。此外，该模块可以将数据从一种字符集转换为另一种字符集，但有一些限制：
- 转换以一种方式执行——从服务器到客户端，
- 只能转换单字节字符集
- 或单字节字符集到/从UTF-8。

#### ngx_http_dav_module模块
该ngx_http_dav_module模块旨在通过WebDAV协议实现文件管理自动化。该模块处理HTTP和WebDAV方法PUT、DELETE、MKCOL、COPY和MOVE。  
默认情况下不构建此模块，应使用--with-http_dav_module配置参数启用它。

#### ngx_http_empty_gif_module模块
该ngx_http_empty_gif_module模块发出单像素透明GIF。

#### ngx_http_f4f_module模块
该ngx_http_f4f_module模块为Adob​​e HTTP动态流(HDS)提供服务器端支持。  
该模块以`/videoSeg1-Frag1`形式实现对HTTP动态流请求的处理videoSeg1.f4f使用videoSeg1.f4x索引文件从文件中提取所需的片段。该模块是用于Apache的Adob​​e f4f模块(HTTP Origin模块)的替代方案。

#### ngx_http_fastcgi_module模块
该ngx_http_fastcgi_module模块允许将请求传递到FastCGI服务器。

#### ngx_http_flv_module模块
该ngx_http_flv_module模块为Flash视频(FLV)文件提供伪流服务器端支持。  
它特别处理带有start请求URI查询字符串中的参数的请求，方法是发回从请求的字节偏移量开始并带有前置FLV标头的文件内容。  
默认情况下不构建此模块，应使用--with-http_flv_module配置参数启用它。

#### ngx_http_geo_module模块
该ngx_http_geo_module模块根据客户端IP地址创建具有值的变量。

#### ngx_http_geoip_module模块
所述ngx_http_geoip_module模块与根据客户端的IP地址值，并使用预编译创建变量的MaxMind数据库。  
当使用支持IPv6的数据库时，IPv4地址被查找为IPv4映射的IPv6地址。  
默认情况下不构建此模块，应使用--with-http_geoip_module配置参数启用它。

#### ngx_http_grpc_module模块
该ngx_http_grpc_module模块允许将请求传递到gRPC服务器。该模块需要ngx_http_v2_module模块。

#### ngx_http_gunzip_module模块
该ngx_http_gunzip_module模块是一个过滤器，它`Content-Encoding: gzip`为不支持`gzip`编码方法的客户端使用解压缩响应。当需要存储压缩数据以节省空间和降低I/O成本时，该模块将非常有用。  
默认情况下不构建此模块，应使用--with-http_gunzip_module配置参数启用它。

#### ngx_http_gzip_module模块
该ngx_http_gzip_module模块是一个使用`gzip`方法压缩响应的过滤器。这通常有助于将传输数据的大小减少一半甚至更多。

#### ngx_http_gzip_static_module模块
该ngx_http_gzip_static_module模块允许发送带有`.gz`文件扩展名的预压缩文件，而不是常规文件。
默认情况下不构建此模块，应使用--with-http_gzip_static_module配置参数启用它。

#### ngx_http_headers_module模块
该ngx_http_headers_module模块允许将`Expires`和`Cache-Control`标头字段以及任意字段添加到响应标头中。

#### ngx_http_hls_module模块
该ngx_http_hls_module模块为MP4和MOV媒体文件提供HTTP Live Streaming(HLS)服务器端支持。这些文件通常具有.mp4，.m4v，.m4a，.mov，或.qt文件扩展名。该模块支持H.264视频编解码器、AAC和MP3音频编解码器。  
对于每个媒体文件，支持两个URI：  
- 带有`.m3u8`文件扩展名的播放列表URI。URI可以接受可选参数：  
  - `start`和`end`以秒为单位定义播放列表边界。  
  - `offset`将初始播放位置移动到以秒为单位的时间偏移量。正值设置与播放列表开头的时间偏移。负值设置与播放列表中最后一个片段末尾的时间偏移。  
  - `len`以秒为单位定义片段长度。  
- 带有`.ts`文件扩展名的片段URI。URI可以接受可选参数：  
  - `start`和`end`以秒为单位定义片段边界。

#### ngx_http_image_filter_module模块
该ngx_http_image_filter_module模块是一个过滤器，可以转换JPEG、GIF、PNG和WebP格式的图像。  
默认情况下不构建此模块，应使用--with-http_image_filter_module配置参数启用它。

#### ngx_http_js_module模块
该ngx_http_js_module模块用于在njs(JavaScript语言的一个子集)中实现位置和变量处理程序。

#### ngx_http_keyval_module模块
所述ngx_http_keyval_module模块使用从被管理的键-值对中获得的值的变量的API的是还可以与设置或可变NJS。

#### ngx_http_limit_conn_module模块
该ngx_http_limit_conn_module模块用于限制每个定义的键的连接数，特别是来自单个IP地址的连接数。  
并非所有连接都被计算在内。仅当服务器正在处理请求并且已读取整个请求标头时，才会对连接进行计数。

#### ngx_http_limit_req_module模块
该ngx_http_limit_req_module模块用于限制每个定义的键的请求处理率，特别是来自单个IP地址的请求的处理率。限制是使用“漏桶”方法完成的。

#### ngx_http_map_module模块
该ngx_http_map_module模块创建其值取决于其他变量值的变量。

#### ngx_http_memcached_module模块
该ngx_http_memcached_module模块用于从memcached服务器获取响应。密钥设置在$memcached_key变量中。响应应提前通过nginx外部的方式放入memcached。

#### ngx_http_mirror_module模块
所述ngx_http_mirror_module模块实现通过创建背景镜子请求镜像的原始请求的。对镜像子请求的响应将被忽略。

#### ngx_http_mp4_module模块
该ngx_http_mp4_module模块为MP4文件提供伪流服务器端支持。这些文件通常具有.mp4，.m4v或.m4a文件扩展名。

#### ngx_http_perl_module模块
该ngx_http_perl_module模块用于在Perl中实现位置和变量处理程序，并将Perl调用插入SSI。  
默认情况下不构建此模块，应使用--with-http_perl_module配置参数启用它。

#### ngx_http_random_index_module模块
该ngx_http_random_index_module模块处理以斜线字符('/')结尾的请求，并在目录中随机选取一个文件作为索引文件。该模块在ngx_http_index_module模块之前处理。  
默认情况下不构建此模块，应使用--with-http_random_index_module配置参数启用它。

#### ngx_http_realip_module模块
该ngx_http_realip_module模块用于将客户端地址和可选端口更改为在指定头字段中发送的那些。  
默认情况下不构建此模块，应使用--with-http_realip_module配置参数启用它。

#### ngx_http_referer_module模块
该ngx_http_referer_module模块用于阻止对`Referer`标头字段中具有无效值的请求的访问。应该记住，使用适当的`Referer`字段值制作请求非常容易，因此该模块的预期目的不是彻底阻止此类请求，而是阻止常规浏览器发送的大量请求流。还应该考虑到，即使对于有效请求，常规浏览器也可能不会发送`Referer`字段。

#### ngx_http_scgi_module模块
该ngx_http_scgi_module模块允许将请求传递给SCGI服务器。

#### ngx_http_secure_link_module模块
该ngx_http_secure_link_module模块用于检查请求链接的真实性，保护资源免受未经授权的访问，并限制链接寿命。  
通过比较请求中传递的校验和值与为请求计算的值来验证请求链接的真实性。如果链接的生命周期有限且时间已过期，则认为该链接已过期。这些检查的状态在$secure_link变量中可用。
该模块提供两种可选的操作模式。第一种模式由secure_link_secret指令启用，用于检查请求链接的真实性以及保护资源免受未经授权的访问。第二种模式由secure_link和secure_link_md5指令启用，也用于限制链接的生命周期。  
默认情况下不构建此模块，应使用--with-http_secure_link_module配置参数启用它。

#### ngx_http_session_log_module模块
该ngx_http_session_log_module模块启用日志记录会话(多个HTTP请求的聚合)而不是单个HTTP请求。

#### ngx_http_slice_module模块
所述ngx_http_slice_module模块是一个分割请求转换成子请求，每个返回一定范围内响应的滤波器。过滤器为大响应提供更有效的缓存。  
默认情况下不构建此模块，应使用--with-http_slice_module配置参数启用它。

#### ngx_http_spdy_module模块
该ngx_http_spdy_module模块为SPDY提供实验支持。目前，SPDY协议草案3.1正在实施。  
默认情况下不构建此模块，应使用--with-http_spdy_module配置参数启用它。

#### ngx_http_split_clients_module模块
该ngx_http_split_clients_module模块创建适合A/B测试(拆分测试)的变量。

#### ngx_http_ssi_module模块
该ngx_http_ssi_module模块是一个过滤器，用于处理通过它的响应中的SSI(服务器端包含)命令。目前，支持的SSI命令列表不完整。

#### ngx_http_ssl_module模块
该ngx_http_ssl_module模块为HTTPS提供了必要的支持。  
默认情况下不构建此模块，应使用--with-http_ssl_module配置参数启用它。

#### ngx_http_status_module模块
该ngx_http_status_module模块提供对各种状态信息的访问。

#### ngx_http_stub_status_module模块
该ngx_http_stub_status_module模块提供对基本状态信息的访问。  
默认情况下不构建此模块，应使用--with-http_stub_status_module配置参数启用它。

#### ngx_http_sub_module模块
该ngx_http_sub_module模块是一个过滤器，它通过将一个指定的字符串替换为另一个来修改响应。  
默认情况下不构建此模块，应使用--with-http_sub_module配置参数启用它。

#### ngx_http_upstream_conf_module模块
该ngx_http_upstream_conf_module模块允许通过简单的HTTP接口即时配置上游服务器组，而无需重新启动nginx。的HTTP或流服务器组必须驻留在共享存储器中。

#### ngx_http_upstream_hc_module模块
该ngx_http_upstream_hc_module模块允许对周围位置引用的组中的服务器进行定期健康检查。服务器组必须驻留在共享内存中。  
如果健康检查失败，服务器将被视为不健康。如果为同一组服务器定义了多个健康检查，则任何检查的单个失败都会使相应的服务器被视为不健康。客户端请求不会传递到不健康的服务器和处于“正在检查”状态的服务器。

#### ngx_http_userid_module模块
该ngx_http_userid_module模块设置适合客户端识别的cookie。可以使用嵌入变量$uid_got和$uid_set记录接收和设置的cookie。此模块与Apache的mod_uid模块兼容。

#### ngx_http_uwsgi_module模块
该ngx_http_uwsgi_module模块允许将请求传递到uwsgi服务器。

#### ngx_http_v2_module模块
该ngx_http_v2_module模块提供对HTTP/2的支持并取代ngx_http_spdy_module模块。
默认情况下不构建此模块，应使用--with-http_v2_module配置参数启用它。

#### ngx_http_xslt_module模块
该ngx_http_xslt_module是一个过滤器，使用一个或多个XSLT样式表转换的XML响应。
默认情况下不构建此模块，应使用--with-http_xslt_module配置参数启用它。

#### ngx_mail_core_module模块
默认情况下不构建此模块，应使用--with-mail配置参数启用它。

#### ngx_mail_auth_http_module模块

#### ngx_mail_proxy_module模块

#### ngx_mail_realip_module模块
该ngx_mail_realip_module模块用于将客户端地址和端口更改为在PROXY协议头中发送的地址和端口。必须事先通过在指令中设置proxy_protocol参数来启用PROXY协议listen。

#### ngx_mail_ssl_module模块
该ngx_mail_ssl_module模块为使用SSL/TLS协议的邮件代理服务器提供必要的支持。  
默认情况下不构建此模块，应使用--with-mail_ssl_module配置参数启用它。

#### ngx_mail_imap_module模块

#### ngx_mail_pop3_module模块

#### ngx_mail_smtp_module模块

#### ngx_stream_core_module模块
默认情况下不构建此模块，应使用--with-stream配置参数启用它。

#### ngx_stream_access_module模块
该ngx_stream_access_module模块允许限制对某些客户端地址的访问。

#### ngx_stream_geo_module模块
该ngx_stream_geo_module模块创建了这取决于客户端的IP地址值的变量。

#### ngx_stream_geoip_module模块
该ngx_stream_geoip_module模块，依赖于客户端的IP地址值，并使用预编译创建变量的MaxMind数据库。  
使用支持IPv6的数据库时IPv4地址将作为IPv4映射的IPv6地址进行查找。  
默认情况下不构建此模块，应使用--with-stream_geoip_module配置参数启用它。

#### ngx_stream_js_module模块
该ngx_stream_js_module模块用于在njs中实现处理程序JavaScript语言的一个子集。

#### ngx_stream_keyval_module模块
该ngx_stream_keyval_module模块使用从被管理的键-值对获得的值的变量的API。

#### ngx_stream_limit_conn_module模块
该ngx_stream_limit_conn_module模块被用于限制每个定义的键连接的数量，尤其是，从一个单一的IP地址的连接的数量。

#### ngx_stream_log_module模块
该ngx_stream_log_module模块在指定的格式写入会话日志。

#### ngx_stream_map_module模块
该ngx_stream_map_module模块创建变量，其值依赖于其它变量的值。

#### ngx_stream_proxy_module模块
该ngx_stream_proxy_module模块允许通过TCP、UDP和UNIX域套接字代理数据流。

#### ngx_stream_realip_module模块
该ngx_stream_realip_module模块用于将客户端地址和端口更改为在PROXY协议头中发送的地址和端口。必须事先通过在指令中设置proxy_protocol参数来启用PROXY协议listen。  
默认情况下不构建此模块，应使用--with-stream_realip_module配置参数启用它。

#### ngx_stream_return_module模块
该ngx_stream_return_module模块允许发送一个指定的值给客户端，然后关闭连接。

#### ngx_stream_set_module模块
该ngx_stream_set_module模块允许设置一个变量的值。

#### ngx_stream_split_clients_module模块
该ngx_stream_split_clients_module模块创建一个适合于A/B测试，也称为分割测试变量。

#### ngx_stream_ssl_module模块
该ngx_stream_ssl_module模块为流代理服务器与SSL/TLS协议一起工作提供了必要的支持。  
默认情况下不构建此模块，应使用--with-stream_ssl_module配置参数启用它。

#### ngx_stream_ssl_preread_module模块
该ngx_stream_ssl_preread_module模块允许在不终止SSL/TLS的情况下从ClientHello消息中提取信息，例如，通过SNI请求的服务器名称或在ALPN中公布的协议。  
默认情况下不构建此模块，应使用--with-stream_ssl_preread_module配置参数启用它。

#### ngx_stream_upstream_module模块
该ngx_stream_upstream_module模块被用于定义可以由被引用的服务器组proxy_pass指令。

#### ngx_stream_upstream_hc_module模块
该ngx_stream_upstream_hc_module模块允许启用组中服务器的定期健康检查。服务器组必须驻留在共享内存中。  
如果健康检查失败，服务器将被视为不健康。如果为同一组服务器定义了多个健康检查，则任何检查的单个失败都会使相应的服务器被视为不健康。客户端连接不会传递到不健康的服务器和处于“检查”状态的服务器。

#### ngx_stream_zone_sync_module模块
该ngx_stream_zone_sync_module模块为在集群节点之间同步共享内存区域的内容提供了必要的支持。要为特定区域启用同步，相应的模块必须支持此功能。目前，可以在http和stream中同HTTP粘性会话、有关过多HTTP请求的信息和键值对。

#### ngx_google_perftools_module模块
该ngx_google_perftools_module模块支持使用Google Performance Tools对nginx工作进程进行分析。该模块适用于nginx开发人员。  
默认情况下不构建此模块，应使用--with-google_perftools_module配置参数启用它。

### error_log 错误日志
- 语法：`error_log file [级别];`
- 默认值：`error_log logs/error.log error;`
- 语境：`main, http, mail, stream, server, location`
- 参数1：定义将存储日志的文件。特殊值`stderr`选择标准错误文件。可以通过指定`syslog:`前缀来配置登录到`syslog`。可以通过指定`memory:`前缀和缓冲区大小来配置循环内存缓冲区的日志记录，通常用于调试。
- 参数2：确定日志记录的级别，可以是以下参数之一：`debug`、`info`、`notice`、`warn`、`error`、`crit`、`alert`、`emerg`。以上日志级别按严重性增加的顺序列出。设置某个日志级别将导致记录指定和更严重日志级别的所有消息。例如，默认级别`error`将导致记录`error`、`crit`、`alert`、`emerg`。如果省略此参数，则使用`error`。
- 为了使`debug`日志工作，nginx需要使用`--with-debug`构建。

### error_page 错误页面
- 语法：`error_page 错误码 ... [=[响应吗]] uri;`
- 语境：`http, server, location,if in location`
1. 例如将`404`定向到`404.html`，将`500`、`502`、`503`、`504`定向到`50x.html`：
    ```ini
    error_page 404             /404.html;
    error_page 500 502 503 504 /50x.html;
    ```
2. 可以改变响应码，例如`404`改为`200`：
    ```ini
    error_page 404 =200 /empty.gif;
    ```
3. 如果由FastCGI/uwsgi/SCGI/gRPC服务器处理，可以使用它的代码进行响应返回，例如：
    ```ini
    error_page 404 = /404.php;
    ```
4. 内部重定向期间不需要更改URI和方法，可以将错误处理传递到命名位置，例如：
    ```ini
    location / {
        error_page 404 = @fallback;
    }

    location @fallback {
        proxy_pass http://backend;
    }
    ```
    如果uri处理导致错误，则将最后发生的错误的状态代码返回给客户端。
5. 使用URL重定向进行错误处理，例如：
    ```ini
    error_page 403 http://example.com/forbidden.html;
    error_page 404 =301 http://example.com/notfound.html;
    ```
    在这种情况下，默认情况下，响应代码302返回给客户端。它只能更改为重定向状态代码之一(301、302、303、307、308)。

### listen 设置IP的地址和端口
- 语法1：`listen address[:port] [default_server] [ssl] [http2 | spdy] [proxy_protocol] [setfib=number] [fastopen=number] [backlog=number] [rcvbuf=size] [sndbuf=size] [accept_filter=filter] [deferred] [bind] [ipv6only=on|off] [reuseport] [so_keepalive=on|off|[keepidle]:[keepintvl]:[keepcnt]];`
- 语法2：`listen port [default_server] [ssl] [http2 | spdy] [proxy_protocol] [setfib=number] [fastopen=number] [backlog=number] [rcvbuf=size] [sndbuf=size] [accept_filter=filter] [deferred] [bind] [ipv6only=on|off] [reuseport] [so_keepalive=on|off|[keepidle]:[keepintvl]:[keepcnt]];`
- 语法3：`listen unix:path [default_server] [ssl] [http2 | spdy] [proxy_protocol] [backlog=number] [rcvbuf=size] [sndbuf=size] [accept_filter=filter] [deferred] [bind] [so_keepalive=on|off|[keepidle]:[keepintvl]:[keepcnt]];`
- 默认值：`listen *:80 | *:8000;`
- 语境：`server`
1. 设置IP的地址和端口，或服务器将在其上接受请求的UNIX域套接字的路径。地址和端口都可以指定，或者只能指定地址或端口。地址也可以是主机名，例如：
    ```ini
    listen 127.0.0.1:8000;
    listen 127.0.0.1;
    listen 8000;
    listen *:8000;
    listen localhost:8000;
    ```
2. IPv6地址在方括号中指定
    ```ini
    listen [::]:8000;
    listen [::1];
    ```
3. UNIX域套接字用`unix:`前缀指定
    ```ini
    listen unix:/var/run/nginx.sock;
    ```
- 如果只给出`address`，则使用端口80。
- 如果指令不存在，则如果nginx以超级用户权限运行，则使用`*:80`，否则使用`*:8000`。
- 如果存在`default_server`，`address:port`是默认服务器。如果不存在`default_server`，具有`address:port`的第一台服务器是默认服务器。
- ■■`ssl`参数允许指定此端口上接受的所有连接应在ssl模式下工作。这允许为处理HTTP和HTTPS请求的服务器提供更紧凑的配置。
- `http2`参数将端口配置为接受HTTP/2连接。正常情况下，要使其工作，还应指定ssl参数，但nginx也可以配置为接受不带ssl的HTTP/2连接。
- `spdy`参数允许在此端口上接受spdy连接。正常情况下，要使其工作，还应指定ssl参数，但nginx也可以配置为接受没有ssl的SPDY连接。
- `proxy_protocol`参数允许指定此端口上接受的所有连接都应使用代理协议。
- `listen`指令可以有几个特定于套接字相关系统调用的附加参数。这些参数可以在任何listen指令中指定，但对于给定的`address:port`只能指定一次。
- `setfib=number`参数设置侦听套接字的关联路由表(FIBSO_SETFIB选项)。这目前仅适用于FreeBSD。
- `fastopen=number`为侦听套接字启用`TCP Fast Open`，并限制尚未完成三方握手的连接队列的最大长度。
- `backlog=number`在listen()调用中设置backlog参数，该参数限制挂起连接队列的最大长度。默认情况下，backlog在FreeBSD、DragonFly BSD和macOS上设置为-1，在其他平台上设置为511。
- `rcvbuf=size`设置侦听套接字的接收缓冲区大小(SO_RCVBUF选项)。
- `sndbuf=size`设置侦听套接字的接收缓冲区大小(SO_SNDBUF选项)。
- `accept_filter=filter`为侦听套接字设置accept filter(SO_ACCEPTFILTER选项)的名称，该套接字在将传入连接传递给accept()之前对其进行筛选。这仅适用于FreeBSD和NetBSD 5.0+。可能的值是dataready和httpready。
- `deferred`指示在Linux上使用延迟的accept()(TCP_DEFER_ACCEPT套接字选项)。
- `bind`指示对给定的地址：端口对进行单独的bind()调用。这是很有用的，因为如果有多个listen指令具有相同的端口但地址不同，并且其中一个listen指令侦听给定端口(&#42;:port)的所有地址，那么nginx将bind()仅绑定到(&#42;:port)。应该注意的是，在这种情况下将进行getsockname()系统调用，以确定接受连接的地址。如果使用setfib、fastopen、backlog、rcvbuf、sndbuf、accept_filter、deferred、ipv6only、reuseport或so_keepalive参数，则对于给定的`address:port`，将始终进行单独的bind()调用。
- `ipv6only=on|off`确定(IPV6_V6ONLY套接字选项)侦听通配符地址`[::]`的IPV6套接字将只接受IPV6连接还是同时接受IPV6和IPv4连接。默认情况下，此参数处于启用状态。启动时只能设置一次。
- `reuseport`指示为每个工作进程创建一个单独的侦听套接字(在Linux 3.9+和DragonFly BSD上使用SO_REUSEPORT socket选项，或在FreeBSD 12+上使用SO_REUSEPORT_LB选项)，允许内核在工作进程之间分发传入连接。这目前仅适用于Linux 3.9+、DragonFly BSD和FreeBSD 12+。
- `so_keepalive=on|off|[keepidle]:[keepintvl]:[keepcnt]`配置侦听套接字的`TCP keepalive`行为。如果省略此参数，则操作系统的设置将对套接字生效。如果将其设置为值`on`，则会为套接字启用(SO_KEEPALIVE选项)。如果将其设置为值`off`，则会为套接字关闭(SO_KEEPALIVE选项)。某些操作系统支持使用TCP_KEEPIDLE、TCP_KEEPINTVL和TCP_KEEPCNT套接字选项在每个套接字上设置TCP keepalive参数。在这样的系统(目前为Linux 2.4+、NetBSD 5+和FreeBSD 9.0-STABLE)上，可以使用keepidle、keepintvl和keepcnt参数对其进行配置。可以省略一个或两个参数，在这种情况下，相应套接字选项的系统默认设置将生效。例如
    ```ini
    so_keepalive=30m::10
    ```
    将空闲超时(TCP_KEEPIDLE)设置为30分钟，将探测间隔(TCP_KEEPINTVL)保留为系统默认值，并将探测计数(TCP_KEEPCNT)设置为10个探测，例如：
    ```ini
    listen 127.0.0.1 default_server accept_filter=dataready backlog=1024;
    ```

### location 根据请求URI设置匹配
- 语法1：`location [ = | ~ | ~* | ^~ ] uri { ... }`
- 语法2：`location @name { ... }`
- 语境：`server, location`

匹配规则：
- `=`：严格匹配
- `~`：区分大小写匹配
- `~*`：不区分大小写匹配
- `!~`：区分大小写不匹配
- `!~*`：不区分大小写不匹配
- `^~`：常规字符串，不检查正则表达式
- `/`：通用匹配，任何请求都会匹配到
- `@`：定义一个命名的location，使用在内部定向时，例如error_page,try_files

多个location配置的情况下匹配顺序为：`=`->`^~`->文件中顺序的正则匹配->`/`

示例：
- 匹配任意请求
    ```ini
    location / { }
    ```
- 不区分大小写匹配任何以gif、jpg、jpeg结尾的请求，并将该请求重定向到/logo.png请求
    ```ini
    location ~* .(gif|jpg|jpeg)$ {
    rewrite .(gif|jpg|jpeg)$ /logo.png;
    }
    ```
- 区分大小写匹配以.txt结尾的请求，并设置此location的路径是/usr/local/nginx/html/。也就是以.txt结尾的请求将访问/usr/local/nginx/html/路径下的txt文件
    ```ini
    location ~ ^.+\.txt$ {
    root /usr/local/nginx/html/;
    }
    ```

### allow和deny 允许和拒绝
- 语法1：`allow address | CIDR | unix: | all;`
- 语法2：`deny address | CIDR | unix: | all;`
- 语境：`http, server, location, limit_except`

允许或拒绝访问指定的网络或地址。如果unix:指定了特殊值，则允许访问所有UNIX域套接字。

例如：
```ini
location / {
    deny  192.168.1.1;
    allow 192.168.1.0/24;
    allow 10.1.1.0/16;
    allow 2001:0db8::/32;
    deny  all;
}
```
规则按顺序检查，直到找到第一个匹配项。在此示例中，仅允许访问IPv4网络10.1.1.0/16(192.168.1.0/24不包括地址192.168.1.1)和IPv6网络2001:0db8::/32。如果规则很多，最好使用ngx_http_geo_module模块变量。

### index 索引
- 语法：`index file ...;`
- 默认值：`index index.html;`
- 语境：`http, server, location`

定义将用作索引的文件。该file名称可以包含变量。按照指定的顺序检查文件。列表的最后一个元素可以是具有绝对路径的文件。例如：
```ini
index index.$geo.html index.0.html /index.html;
```
需要注意的是，使用索引文件会导致内部重定向，并且可以在不同的位置处理请求。例如，使用以下配置：
```ini
location = / {
    index index.html;
}

location / {
    ...
}
```
"/"请求实际上将在第二个位置作为"/index.html"处理。

## 配置
### 代理
```ini
location / {
    proxy_pass http://localhost:8080;
    proxy_set_header X-Real-IP $remote_addr;
}
```

### PHP
```ini
location ~ \.php$ {
    root           html;
    fastcgi_pass   127.0.0.1:9000;
    fastcgi_index  index.php;
    fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
    include        fastcgi_params;
}
```

### SSL
需要在`conf`目录下创建`cert`文件夹，并把证书放入。
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
