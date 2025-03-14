# MongoDB

- 官网 <https://www.mongodb.com/>
- 教程 <https://www.mongodb.com/zh-cn/docs/manual/tutorial/install-mongodb-on-ubuntu/>

## Linux使用MongoDB

1. 安装`gnupg`和`curl`：`apt install gnupg curl`
2. 添加MongoDB仓库密钥：`curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg --dearmor`
3. 添加MongoDB软件源：`echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-8.0.list`
4. 更新包索引：`apt update`
5. 安装MongoDB：`apt install -y mongodb-org`
6. 开启外网访问：修改文件：`/etc/mongod.conf`，修改`bindIp: 127.0.0.1`为`bindIp: 0.0.0.0`
7. 开启密码登录，新增

```yml
security:
  authorization: enabled
```

- 启动：`systemctl start mongod`
- 进入MongoDB命令行`mongosh`
- 切换到admin数据库`use admin`
- 创建管理员用户`root`

```js
db.createUser({
  user: "root",
  pwd: "root",
  roles: [{ role: "userAdminAnyDatabase", db: "admin" }]
})
```

- 创建其他数据库用户
- 切换到testdb数据库`use testdb`
- 创建用户`test`

```js
db.createUser({
  user: "test",
  pwd: "test",
  roles: [{ role: "readWrite", db: "testdb" }]
})
```

- 新增一条数据`db.a.insert({a:1})`
- 验证数据库`db.auth("test","test")`

- 数据目录：`/var/lib/mongodb/`
- 日志目录：`/var/log/mongodb/`
- 临时文件：`/tmp/mongodb-27017.sock`
