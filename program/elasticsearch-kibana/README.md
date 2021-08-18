# ElasticSearchKibana

## 下载
下载地址 https://www.elastic.co/cn/downloads/kibana 版本选择`WINDOWS`，名称应为`kibana-版本号-windows-x86_64.zip`，解压后文件夹名称应为`kibana-版本号-windows-x86_64`

## 初始化
1. 把本压缩包解压到`kibana-版本号-windows-x86_64`文件夹内，如图所示：  
![初始化示例](img/初始化示例.jpg)
2. 双击`初始化.bat`文件

## 运行
双击`ESKibana.bat`文件

## 提示
1. 启用跨域  
   编辑`config/kibaba.yml`，在尾部添加以下一行
   ```yml
   server.host: "0.0.0.0"
   ```

## 注意
ElasticSearch和Kibana版本号需要一致

## 打包下载
地址 https://cloud.189.cn/web/share?code=ZnYFvuqINV3q  
找到`elasticsearch-kibana-版本号.zip`进行下载  
修改功能：
1. 启用跨域
