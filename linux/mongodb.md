# MongoDB

- 官网 <https://www.mongodb.com/>
- 教程 <https://www.mongodb.com/zh-cn/docs/manual/tutorial/install-mongodb-on-ubuntu/>

1. 安装`gnupg`和`curl`：`apt install gnupg curl`
2. 添加MongoDB仓库密钥：`curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg --dearmor`
3. 添加MongoDB软件源：`echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-8.0.list`
4. 更新包索引：`apt update`
5. 安装MongoDB：`apt install mongodb-org`
6. 开启外网访问：修改文件：`/etc/mongod.conf`，修改`bindIp: 127.0.0.1`为`bindIp: 0.0.0.0`
7. 开启密码登录，新增

```yml
security:
  authorization: enabled
```

- 启动：`systemctl start mongod`
- 进入MongoDB命令行`mongosh`、`mongosh --host 127.0.0.1 -port 27017 -u 用户名 -p 密码`
- 切换到admin数据库`use admin`
- 创建超级管理员用户`root`

```js
db.createUser({user: "root", pwd: "ChengKai1998!", roles: [{role: "root", db:"admin"}]})
```

- 验证超级管理员`db.auth("root","root")`
- 创建其他数据库用户
- 创建用户`test`只能读写`testdb`数据库
- 切换到`testdb`数据库`use testdb`

```js
db.createUser({user: "test", pwd: "test", roles: [{role: "readWrite", db:"testdb"}]})
```

- 新增一条数据`db.a.insert({a:1})`

- 数据目录：`/var/lib/mongodb/`
- 日志目录：`/var/log/mongodb/`
- 临时文件：`/tmp/mongodb-27017.sock`
