# deepin

## 以root身份运行

`sudo su`

## 服务

### 更新

`apt update`

### 安装软件

- ssh: `apt install openssh-server`
- xrdp: `apt install xrdp`
- ftp: `apt install vsftpd`
- docker: `apt install docker-ce`

#### ssh

1. 已经默认安装了，但是没有启动和开机自启
2. 启动：`systemctl start ssh`
3. 开机自启：`systemctl enable ssh`

#### xrdp

1. 开机自启：`systemctl enable xrdp`
2. 远程连接会黑屏，使用以下操作
3. 添加到用户组`sudo adduser xrdp ssl-cert`
4. 修改配置文件`/etc/xrdp/startwm.sh`，在`fi`后，`if test -r /etc/profile; then`前（在文件尾部），加上以下配置

   ```ini
   unset DBUS_SESSION_BUS_ADDRESS
   unset XDG_RUNTIME_DIR
   .$ HOME/.profile
   ```

### 启动

`systemctl start xxx`

### 开机自启

`systemctl enable xxx`

### 查询状态

命令: `systemctl status xxx`  
正在运行显示: `Active: active (running)`

## 定时关机

- 打开文件: `vi /etc/crontab`
- 追加文本: `52 00 * * * root /sbin/shutdown -h now`
  - 解释: 北京时间0:52执行`/sbin/shutdown -h now`
  - 使用`:wq`进行保存退出
  重启服务: `/etc/init.d/cron restart`
