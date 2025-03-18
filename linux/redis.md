# redis

- 安装：`apt install redis`
- 修改配置文件：`/etc/redis/redis.conf`
  - 开启外网访问`bind 127.0.0.1 -::1`改成`bind 0.0.0.0`
  - 设置密码`# requirepass foobared`改成`requirepass 密码`，用户名为`default`或不填
  - 设置ACL，取消注释`# aclfile /etc/redis/users.acl`(`requirepass`失效、`default`设置密码后，acl才有效)

## ACL配置

- 创建acl文件：`touch /etc/redis/users.acl`
- 修改权限：`chmod 700 /etc/redis/users.acl`、`chown redis:redis /etc/redis/users.acl`
- 访问命令行`redis-cli`(默认用户`default`无密码)
- 查看用户列表`acl list`

```txt
1) "user default on nopass ~* &* +@all"
```

- `user`：用户
- `default`：用户名
- `on`：启用或禁用`off`
- `nopass`：无密码或加密后的密码
- `~*`：可访问的键。`~*`表示所有键，`~prefix:*`只可访问`prefix:`开头的键
- `&*`：频道模式权限。同`~*`
- `+@all`：可执行的命令。`+@all`表示所有命令，`+`、`-`表示授权和销权，`all`表示权限

- `acl load`：加载acl(首次启动会自动读取)
- `acl save`：持久化acl(不会自动保存，需要手动保存)
- `acl setuser 用户名 on >密码 ~* &* +@all`：设置用户密码和权限
  - `on`：启用
  - `off`：禁用
  - `><password>`：新增一个密码(可以有多个密码)
  - `<<password>`：删除一个密码
  - `#<hash>`：新增一个hash密码(SHA-256小写16进制64字符)
  - `!<hash>`：删除一个hash密码
  - `nopass`：无密码
  - `resetpass`：刷新允许的密码列表
  - `+<command>`：将命令添加到用户可以调用的命令列表中。可使用`|`
  - `-<command>`：将命令删除到用户可以调用的命令列表中。可使用`|`
  - `~<pattern>`：可访问的键
  - `allkeys`：`~*`的别名
  - `resetkeys`：刷新允许的键模式列表
  - `&<pattern>`：频道模式权限
  - `allchannels`：`&*`的别名
  - `resetchannels`：刷新允许的频道模式列表
  - `+@<category>`：添加该类别中所有要由用户调用的命令
  - `-@<category>`：删除该类别中所有要由用户调用的命令
  - `allcommands`：`+@all`的别名
  - `nocommands`：`-@all`的别名
- `acl deluser 用户名`：删除用户
- `acl getuser 用户名`：获取用户详细信息
- `acl users`：所有用户
- `acl whoami`：当前登录用户

## 命令行访问

- 访问命令行`redis-cli -h 127.0.0.1 -p 6379 --user 用户名 -a 密码`
- 访问命令行`redis-cli`
  - 验证密码`auth 密码`或`auth 用户名 密码`
