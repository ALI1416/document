# Fiddler

- `官网下载`:<https://www.telerik.com/download/fiddler>
- `命令行下载`:`winget download Telerik.Fiddler.Classic`

## 开启HTTPS捕获

1. `Tools`->`Options`->`HTTPS`
2. 勾选`Capture HTTPS CONNECTs`(捕获HTTPS连接)
3. 勾选`Decrypt HTTPS traffic`(解密HTTPS流量)
   1. 会弹出安装证书对话框，进行安装即可
   2. 如果没有弹出，点击`Actions`->`Trust Root Certificate`(信任根证书)进行安装
4. 选择`...from all processes`(所有进程)
5. 勾选`Ignore server certificate errors(unsafe)`(忽略服务器证书错误(不安全))
6. 切换`Connections`标签
7. 取消勾选`Reuse client connections`(复用客户端连接)
8. 勾选`Allow remote computers to connect`(允许远程计算机连接)
9. `Bypass Fiddler for URLs that start with`(对于以...开头的URL，绕过Fiddler)里面删掉`<<loopback>>`，才可抓取`127.0.0.1`/`localhost`的请求

## 无法抓到的情况

1. 软件不走Windows系统代理（大量桌面客户端、Qt、Electron程序）
   1. 部分软件自带网络设置，需要在软件内部手动配置代理：`127.0.0.1:8888`
   2. 部分程序(Electron/Chromium内核)启动参数强制指定代理`yourApp.exe --proxy-server=http://127.0.0.1:8888`
2. SSL‑Pinning(证书锁)无法抓到
3. 使用HTTP/3(QUIC/UDP)：不走HTTP代理
4. 软件使用WinHTTP而非WinINET：部分C++客户端不走系统代理，需要命令设置系统代理
   1. 开启`netsh winhttp set proxy 127.0.0.1:8888`
   2. 关闭`netsh winhttp reset proxy`

## 开启iOS抓包

1. `设置`->`无线局域网`->`当前WiFi右侧!`->`配置代理`->`手动`
   1. 服务器:`Windows局域网IP`
   2. 端口:`8888`
   3. 认证:`关闭`
2. `Safari`浏览器访问`Windows局域网IP:8888`，点击`FiddlerRoot certificate`下载证书
3. `设置`->顶部`已下载的描述文件`->`安装`
4. `设置`->`通用`->`关于本机`->底部`证书信任设置`->打开`DO_NOT_TRUST_FiddlerRoot`的信任开关(绿色开启)
