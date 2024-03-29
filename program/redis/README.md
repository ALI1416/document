# Redis

## 下载

1. 下载地址 <https://github.com/zkteco-home/redis-windows/releases> 版本选择最新版，名称应为`redis-7.0.11-windows.zip`，新建`Redis-x64-7.0.11`文件夹并把文件解压进去
2. 快速下载地址 <https://github.com/zkteco-home/redis-windows/releases/download/7.0.11/redis-7.0.11-windows.zip> 版本号参考 <https://github.com/zkteco-home/redis-windows/tags>

## 初始化

1. 把本压缩包解压到`Redis-x64-7.0.11`文件夹内，如图所示：  
![初始化示例](img/初始化示例.jpg)
2. 双击`extra`文件夹里的`初始化.bat`文件

## 运行

1. 双击`Redis.bat`文件
2. 运行示例  
![运行示例](img/运行示例.jpg)

## 提示

1. 启用外网访问  
编辑`redis.conf`文件  
   1. `bind 127.0.0.1`改成`bind 0.0.0.0`  
   2. `protected-mode yes`改成`protected-mode no`
2. 设置密码  
编辑`redis.conf`文件，在尾部添加以下一行

```yml
requirepass Alibaba2021!
```

## 打包下载

1. 天翼云盘 <https://cloud.189.cn/web/share?code=ZnYFvuqINV3q>

### 修改功能

1. 启用外网访问

## 网站

1. 项目地址 <https://gitee.com/ALI1416/document/tree/master/program/redis>
2. 个人网站 <https://www.404z.cn>
3. GitHub <https://github.com/ALI1416>
4. Gitee <https://gitee.com/ALI1416>
