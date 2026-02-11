# iRedMail

## 修改服务器配置

1. 修改主机名，编辑文件`/etc/hostname`，修改为`mail`
2. 新增主机名和IP地址映射，编辑文件`/etc/hosts`，在第一行添加`127.0.0.1 mail.404z.cn mail localhost`
3. 重启系统`reboot`

## iRedMail安装与配置

1. 访问官网`https://github.com/iredmail/iRedMail`，复制最新版链接`https://github.com/iredmail/iRedMail/archive/refs/tags/1.7.4.tar.gz`
2. 下载最新版到本地`wget https://github.com/iredmail/iRedMail/archive/refs/tags/1.7.4.tar.gz`
3. 解压到本地`tar -zxvf 1.7.4.tar.gz`
4. 切换到安装目录`cd iRedMail-1.7.4`
5. 执行安装脚本`bash iRedMail.sh`
6. 欢迎页，同意安装`Yes`(直接回车)
7. 默认邮件存储路径`/var/vmail`，继续`Next`(直接回车)
8. Web服务，选择`Nginx`，继续`Next`(直接回车)
9. 存储数据库，使用上下和空格选择`MariaDB`(MySQL)，继续`Next`
10. 设置MySQL密码，输入密码，继续`Next`
11. 设置域名，输入`404z.cn`，继续`Next`
12. 设置管理员账号密码，管理员账号为`postmaster@404z.cn`，输入密码，继续`Next`
13. 安装插件
    1. `Roundcubemail`网页版邮箱
    2. `SOGo`网页版邮件、日历和联系人管理(非默认)
    3. `netdata`网页版实时性能监控和分析(可以不使用)
    4. `iRedAdmin`网页版邮件账户管理
    5. `Fail2ban`扫描日志文件，发现多次密码错误等情况时自动封禁对方IP(可以不使用)

## 访问网站

- 邮件登录地址<https://localhost/mail>
- 服务器状态监控<https://localhost/netdata>
- 邮件服务器后台管理<https://localhost/iredadmin>
