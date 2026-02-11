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

## 创建交换分区(内存较大可以不用)

1. 检查现有的交换空间：`swapon --show`，无内容说明没有
2. 禁用现有的交换空间：`swapoff /swapfile`
3. 删除旧交换分区：`rm /swapfile`
4. 重新创建交换文件：`fallocate -l 16G /swapfile`
5. 设置交换文件权限：`chmod 600 /swapfile`
6. 将文件设置为交换空间：`mkswap /swapfile`
7. 启用交换文件：`swapon /swapfile`
8. 验证交换空间：`swapon --show`
9. 永久生效：`echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab`
10. 修改`/etc/sysctl.conf`文件
    1. 新增`vm.swappiness = 60`，范围0-100，值越大交换分区使用越频繁
    2. 新增`vm.min_free_kbytes = 128000`，单位KB，启用交换分区最小值
11. 立即生效：`sysctl -p`

## 更改镜像源

1. 打开文件`/etc/apt/sources.list.d/ubuntu.sources`
2. 内容默认为：

```txt
Types: deb
URIs: http://cn.archive.ubuntu.com/ubuntu/
Suites: noble noble-updates noble-backports
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

Types: deb
URIs: http://security.ubuntu.com/ubuntu/
Suites: noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
```

3. 修改为阿里云镜像

```txt
Types: deb
URIs: https://mirrors.aliyun.com/ubuntu/
Suites: noble noble-updates noble-backports
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

Types: deb
URIs: https://mirrors.aliyun.com/ubuntu/
Suites: noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
```

4. 重新加载软件列表`apt update`
5. 更新软件`apt upgrade`
