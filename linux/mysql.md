# MySQL

- 安装：`apt install mysql-server-8.0`
- 修改配置文件：
  - 删除原链接文件`rm /etc/mysql/my.cnf`
  - 创建文件`vi /etc/mysql/my.cnf`，内容如下

```ini
[mysqld]
port = 3306
max_connections = 1024
max_user_connections = 512
wait_timeout = 600
character-set-server = utf8mb4
collation_server = utf8mb4_general_ci
default-storage-engine = InnoDB

# InnoDB的缓冲池大小
innodb_buffer_pool_size = 1024M

# 密码兼容格式
#default_authentication_plugin = mysql_native_password

# 分词长度
ft_min_word_len = 1
innodb_ft_min_token_size = 1

# 跳过日志记录
skip-log-bin

# 跳过权限验证(忘记密码时使用)
#skip-grant-tables

[mysql]
default-character-set = utf8mb4

[client]
port = 3306
default-character-set = utf8mb4
```

- 重启服务：`systemctl restart mysql`
- 创建用户并赋予全部权限：命令行进入`mysql`(账号root无密码)，依次执行以下语句

```sql
DROP USER IF EXISTS 'ali'@'%';
CREATE USER 'ali'@'%' IDENTIFIED BY 'Alibaba2021!';
GRANT ALL PRIVILEGES ON *.* TO 'ali'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

- 用户名`ali`密码`Alibaba2021!`
- 数据文件夹：`/var/lib/mysql/`
- 日志文件夹：`/var/log/mysql/`
