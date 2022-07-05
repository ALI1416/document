# Mosquitto

## 下载

1. 下载地址 <https://mosquitto.org/download/> 选择`Windows 64位`，名称应为`mosquitto-2.0.14-install-windows-x64.exe`，双击安装
2. 快速下载地址 <https://mosquitto.org/files/binary/win64/mosquitto-2.0.14-install-windows-x64.exe> 版本号参考 <https://mosquitto.org/files/binary/win64/>

## 运行

- 首次安装成功后需要到`服务`里去手动开启
   1. 打开`任务管理器`
   2. 打开`服务`
   3. 找到`Mosquitto Broker`
   4. 右键`开始`
- 重启后会自动启动，如需禁用，请到`服务`里修改`启动类型`

## 提示

1. 开启外网匿名访问
   1. 找到安装目录，修改配置文件`mosquitto.conf`
   2. 新增以下内容

   ```conf
   allow_anonymous true
   listener 1883 0.0.0.0
   ```

2. 添加用户名和密码
   1. 找到安装目录，配置文件`mosquitto.conf`新增一行`password_file D:\Program Files\mosquitto\pwfile.conf`
      1. 其中`D:\Program Files\mosquitto\pwfile.conf`是密码配置文件路径
   2. 在当前目录下打开`CMD`，输入`mosquitto_passwd -c pwfile.conf root`，再输入2次密码即可
      1. 其中`-c`是创建密码配置文件
      2. `pwfile.conf`是密码配置文件名
      3. `root`是创建的用户名

## 打包下载

1. 阿里云盘 <https://www.aliyundrive.com/s/JSqq7tgLvgK>
2. 天翼云盘 <https://cloud.189.cn/web/share?code=ZnYFvuqINV3q>
3. 百度网盘 <https://pan.baidu.com/s/19jzS-u2LhRGBn4L0KKIP3g> 提取码：8888

## 网站

1. 项目地址 <https://gitee.com/ALI1416/document/tree/master/program/mongodb>
2. 个人网站 <http://404z.cn>
3. GitHub <https://github.com/ALI1416>
4. Gitee <https://gitee.com/ALI1416>
