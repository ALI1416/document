# Wireshark

- `官网下载`:<https://www.wireshark.org/>

## 开启HTTPS捕获(仅限Chrome/Edge/Firefox浏览器)

1. 创建文件`C:\temp\sslkeylog.log`
2. 环境变量新增名为`SSLKEYLOGFILE`值为`C:\temp\sslkeylog.log`
3. 杀掉浏览器进程，访问任意一个https网站，查看文件是否有变化
4. `Wireshark`->`编辑`->`首选项`->`Protocols`->`TLS`
   1. 勾选`Reassemble TLS application data spanning multiple TCP segments`(重组分片TLS数据)
   2. `(Pre)-Master‑Secret log filename`填写`C:\temp\sslkeylog.log`
5. 打开`Wireshark`开始抓包，打开浏览器https网站
6. 只有抓到`Client Hello`包才能解析tls(例如`Info`显示`Client Hello (SNI=www.404z.cn)`)
7. 解析成功`Protocol`会显示`HTTP2`协议(失败为`TLSv1.2`，`Info`显示`Application Data`)
8. 在`Info`找到例如`HEADER[1]: GET /api/ip`->`右键`->`追踪流`->`HTTP/2 Stream`
