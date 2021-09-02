# Redis

## 下载
1. 下载地址 https://github.com/tporadowski/redis/releases 版本选择最新版，名称应为`Redis-x64-5.0.10.zip`，新建`Redis-x64-5.0.10`文件夹并把文件解压进去
2. 快速下载地址 https://github.com/tporadowski/redis/releases/download/v5.0.10/Redis-x64-5.0.10.zip 版本号参考 https://github.com/tporadowski/redis/tags

## 初始化
1. 把本压缩包解压到`Redis-x64-5.0.10`文件夹内，如图所示：  
![初始化示例](img/初始化示例.jpg)
2. 双击`初始化.bat`文件

## 运行
1. 双击`Redis.bat`文件

## 提示
1. 启用跨域  
   编辑`redis.conf`文件  
   1. `bind 127.0.0.1`改成`bind 0.0.0.0`  
   2. `protected-mode yes`改成`protected-mode no`
2. 设置密码  
   编辑`redis.conf`文件，在尾部添加以下一行
   ```yml
   requirepass Alibaba2021!
   ```

## 打包下载
1. 地址 https://cloud.189.cn/web/share?code=ZnYFvuqINV3q 找到`redis-5.0.10.zip`进行下载  
   **修改功能**
   1. 启用跨域
