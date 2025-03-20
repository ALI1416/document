# ubuntu

## 开启root用户密码登录

`sudo passwd root`

## 开启root用户SSH登录

1. 打开文件`sodo vi /etc/ssh/sshd_config`
2. 将`PermitRootLogin prohibit-password`修改为`PermitRootLogin yes`
3. 重启ssh服务`sudo systemctl restart ssh`

## 开启root用户图形界面登录

1. 检查当前正在运行的显示管理器`systemctl status display-manager`，一般都为`gdm.service - GNOME Display Manager`
2. 修改GDM配置
3. 打开文件`sudo vi /etc/gdm3/custom.conf`
4. 找到`[security]`部分，添加上`AllowRoot=true`
5. 修改PAM(Pluggable Authentication Module)认证配置
6. 打开文件`sudo vi /etc/pam.d/gdm-password`
7. 注释掉`auth required pam_succeed_if.so user != root quiet_success`
8. 打开文件`sudo vi /etc/pam.d/gdm-autologin`
9. 注释掉`auth required pam_succeed_if.so user != root quiet_success`
10. 重启系统

## 开启SSH

1. 检查是否运行`systemctl status ssh`，名称为`ssh.service - OpenBSD Secure Shell server`
2. 不存在需要安装`sudo apt install openssh-server`
3. 显示`Active: active (running)`表示正在运行
4. 未运行需要启动`systemctl start ssh`
5. 开机自启`systemctl enable ssh`

- 修改端口号，修改文件`/etc/ssh/sshd_config`，修改`#Port 22`，然后重启系统
