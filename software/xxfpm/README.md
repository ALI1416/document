# FastCGI进程管理器

下载地址： https://github.com/78/xxfpm

作用： 维持php-cgi数量，防止崩溃

使用方法： xxfpm php-cgi -n 3 -p 9000

参数：
- `n`： 维持php-cgi进程数量
- `p`： 启动端口号
