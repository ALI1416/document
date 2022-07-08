# deepin

## 以root身份运行

`sudo su`

## 服务

### 更新

`apt update`

### 安装软件

- xrdp: `apt install xrdp`
- ssh: `apt install openssh-server`
- docker: `apt install docker-ce`

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
