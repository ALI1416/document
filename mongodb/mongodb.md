# mongodb

文档地址 https://docs.mongodb.com/manual/tutorial/getting-started/

## 数据库命令
| 常用 | 命令                                           | 解释                             |
| ---- | ---------------------------------------------- | -------------------------------- |
|      | show dbs                                       | 查看数据库列表                   |
|      | use 数据库名                                   | 切换到数据库                     |
|      | use 数据库名                                   | 创建数据库(需要手动插入一条记录) |
|      | db或db.getName()                               | 数据库名                         |
|      | db.adminCommand(command)                       |                                  |
|      | db.aggregate(pipeline, options)                |                                  |
|      | db.changeUserPassword(用户名,密码,写入关注)    | 修改密码                         |
|      | db.cloneCollection(from, collection, query)    | 克隆集合                         |
|      | db.cloneDatabase(hostname)                     | 克隆数据库                       |
|      | db.commandHelp(命令名)                         | 命令帮助                         |
|      | db.copyDatabase(fromdb, todb, fromhost,        | 拷贝数据库                       |
|      | 用户名, 密码, mechanism)                       |                                  |
|      | db.createCollection(集合名,选项)               | 创建集合                         |
|      | db.createRole(角色名,写入关注)                 | 创建角色                         |
|      | db.createUser(用户名,写入关注)                 | 创建用户                         |
|      | db.createView(view, source, pipeline, options) |                                  |
|      | db.currentOp(operations)                       |                                  |
|      | db.dropAllRoles(写入关注)                      | 删除所有角色                     |
|      | db.dropAllUsers(写入关注)                      | 删除所有用户                     |
|      | db.dropDatabase()                              | 删除数据库                       |
|      | db.dropRole(角色名,写入关注)                   | 删除角色                         |
|      | db.dropUser(用户名,写入关注)                   | 删除用户                         |
|      |                                                |                                  |
|      |                                                |                                  |
|      | db.getRoles()                                  | 所有角色(除系统用户)             |
|      | db.getRole(角色名,参数)                        | 角色(除系统用户)                 |
|      | db.getUsers()                                  | 所有用户                         |
|      | db.getUser(用户名,参数)                        | 用户                             |
|      | db.getLastError(w, wtimeout)                   |                                  |
|      | db.getSiblingDB(数据库名)                      |                                  |
|      | db.getCollection(集合名)                       |                                  |
|      | db.getLastErrorObj(key, wtimeout)              |                                  |
|      | db.getLogComponents()                          |                                  |
|      | db.getProfilingLevel()                         |                                  |
|      | db.getCollectionInfos(过滤器)                  | 集合信息                         |
|      | db.getCollectionNames()                        | 所有集合名                       |
|      | db.getProfilingStatus()                        |                                  |
|      | db.getReplicationInfo()                        |                                  |
|      | db.version()                                   | 版本                             |
|      | db.getMongo()                                  | 链接机器地址                     |
|      | db.stats()                                     | 状态                             |
|      |                                                |                                  |
|      |                                                |                                  |
|      |                                                |                                  |

