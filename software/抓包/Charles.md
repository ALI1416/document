# Charles

- `官网下载`:<https://www.charlesproxy.com/download/>
- `注册码`
  - `Registered Name`:`https://zhile.io`
  - `License Key`:`48891cf209c6d32bf4`

## 开启HTTPS捕获

1. 安装根证书`Help`->`SSL Proxying`->`Install Charles Root Certificate`
   1. 点击`安装证书`选择`本地计算机`
   2. 勾选`将所有证书放入下列存储`->`浏览`->`受信任的根证书颁发机构`->`导入`
2. 开启SSL代理解密
   1. `Proxy`->`SSL Proxying Settings`
   2. 勾选`Enable SSL Proxying`
   3. `Include`点`+`->Host填`*`，Port填`443`保存
3. 开启远程SSL代理解密
   1. `Proxy`->`Proxying Settings`
   2. Port填`8888`，勾选`Enable transparent HTTP proxying`保存

## 开启iOS抓包

1. 导出证书到本地`Help`->`SSL Proxying`->`Save Charles Root Certificate`，选择保存路径，类型选择`cer`
2. 发送到手机，保存到`文件`，点击`cer`文件安装
3. `设置`->顶部`已下载的描述文件`->`安装`
4. `设置`->`通用`->`关于本机`->底部`证书信任设置`->打开`Charles Proxy CA`的信任开关(绿色开启)
5. `设置`->`无线局域网`->`当前WiFi右侧!`->`配置代理`->`手动`
   1. 服务器:`Windows的局域网IP`
   2. 端口:`8888`
   3. 认证:`关闭`
   4. 设置完代理，电脑Charles会弹出弹窗，点`Allow`允许手机接入
