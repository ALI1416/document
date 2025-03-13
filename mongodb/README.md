# mongodb

文档地址 <https://www.mongodb.com/zh-cn/docs/manual/tutorial/getting-started/>

## 数据库命令

| 常用 | 命令         | 解释                             |
| ---- | ------------ | -------------------------------- |
| ■■   | show dbs     | 查看数据库列表                   |
| ■■   | use 数据库名 | 切换到数据库                     |
| ■■   | use 数据库名 | 创建数据库(需要手动插入一条记录) |
| ■■   | db           | 显示数据库名                     |

## `db.`开头命令

| 常用 | 命令                                | 解释                                                       |
| ---- | ----------------------------------- | ---------------------------------------------------------- |
|      | help()                              | 帮助                                                       |
| ■■   | getName()                           | 显示数据库名                                               |
| ■■   | auth(用户名,密码)                   | 验证数据库                                                 |
|      | adminCommand(nameOrDocument)        | 切换到admin数据库，并运行命令[只调用db.runCommand(...)]    |
|      | aggregate(pipeline,选项)            | 在此数据库上执行无集合聚合；返回一个游标                   |
|      | cloneDatabase(主机名)               | 克隆数据库                                                 |
|      | commandHelp(命令名)                 | 命令帮助                                                   |
|      | copyDatabase(fromdb,todb,fromhost)  | 拷贝数据库                                                 |
|      | createCollection(集合名,选项)       | 显示创建集合                                               |
|      | createView(视图名,viewOn,操作,选项) | 创建视图                                                   |
|      | createUser(用户名文档)              | 创建用户                                                   |
|      | currentOp()                         | 显示数据库中当前正在执行的操作                             |
|      | dropDatabase()                      | 删除数据库                                                 |
|      | dropUser(用户名)                    | 删除用户                                                   |
|      | eval()                              | 过时                                                       |
|      | fsyncLock()                         | 将数据刷新到磁盘并锁定服务器以进行备份                     |
|      | fsyncUnlock()                       | 在db.fsyncLock()之后解锁服务器                             |
| ■■   | getCollectionNames()                | 所有集合名                                                 |
| ■■   | getCollection(集合名)               | 获取集合信息                                               |
|      | getCollectionInfos(过滤器)          | 集合信息                                                   |
|      | getLastError()                      |                                                            |
|      | getLastErrorObj()                   |                                                            |
|      | getLogComponents()                  |                                                            |
|      | getMongo()                          | 获取服务器连接对象                                         |
|      | getMongo().setSlaveOk()             | 允许在复制从属服务器上进行查询                             |
|      | getPrevError()                      |                                                            |
|      | getProfilingLevel()                 | 过时                                                       |
|      | getProfilingStatus()                |                                                            |
|      | getReplicationInfo()                |                                                            |
|      | getSiblingDB(数据库名)              | 在与此服务器相同的服务器上获取数据库                       |
|      | hostInfo()                          | 获取有关服务器主机的详细信息                               |
|      | isMaster()                          | 检查副本主状态                                             |
|      | killOp(opid)                        | 终止数据库中的当前操作                                     |
|      | listCommands()                      | 列出所有db命令                                             |
|      | loadServerScripts()                 | 加载db.system.js中的所有脚本                               |
|      | printCollectionStats()              |                                                            |
|      | printReplicationInfo()              |                                                            |
|      | printShardingStatus()               |                                                            |
|      | printSlaveReplicationInfo()         |                                                            |
|      | repairDatabase()                    |                                                            |
|      | resetError()                        |                                                            |
|      | runCommand(cmdObj)                  | 运行数据库命令。如果cmdObj是字符串，则将其转换为{cmdObj:1} |
|      | serverStatus()                      |                                                            |
|      | setLogLevel(level,组件)             |                                                            |
|      | setProfilingLevel(level,slowms)     | 0=off 1=slow 2=all                                         |
|      | stats()                             | 状态                                                       |
|      | version()                           | 版本                                                       |

## 登录验证

### 创建用户

```js
// 切换到admin数据库
use admin
// 创建超级管理员账号root密码root
db.createUser({user: "root", pwd: "root", roles: [{role: "root", db:"admin"}]})
// 显示账号
show users
// 删除用户root
db.dropUser('root')
// 修改用户root的密码为root
db.updateUser('root', {pwd: 'root'})
// 切换到rw数据库
use rw
// 创建读写用户账号rw密码rw，指定数据库rw
db.createUser({user: "rw", pwd: "rw", roles: [{role: "readWrite", db:"rw"}]})
```

### 开启登录验证

`mongod --auth`

## 集合命令

### `db.集合名.`开头命令

| 常用 | 命令                                            | 解释                             |
| ---- | ----------------------------------------------- | -------------------------------- |
|      | help()                                          | 帮助                             |
|      | insert(对象)                                    | 插个                             |
| ■■   | **insertOne(对象,选项)**                        | 插入一个                         |
| ■■   | insertMany(对象数组,选项)                       | 插入多个                         |
|      | save(obj)                                       | 插入                             |
|      | update(查询语句,对象[,upsert_bool,multi_bool] ) | 更新                             |
| ■■   | **updateOne(拦截器,更新值,选项)**               | 更新一个                         |
| ■■   | updateMany(拦截器,更新值,选项)                  | 更新多个                         |
|      | replaceOne(拦截器,替换值,选项)                  | 替换                             |
| ■■   | **deleteOne(拦截器,选项)**                      | 删除一个                         |
| ■■   | deleteMany(拦截器,选项)                         | 删除多个                         |
|      | remove(查询语句)                                | 删除                             |
| ■■   | **find(查询语句,字段)**                         | 查询                             |
| ■■   | findOne(语句,字段,选项,读策略)                  | 查询一个                         |
|      | findOneAndDelete(过滤器,选项)                   | 查询一个并删除                   |
|      | findOneAndReplace(过滤器,替换值,选项)           | 查询一个并替换                   |
|      | findOneAndUpdate(过滤器,更新值,选项)            | 查询一个并更新                   |
|      | bulkWrite(操作,选项)                            | 批量写入                         |
|      | copyTo(新集合名)                                | 复制集合，不复制索引             |
|      | convertToCapped(maxBytes)                       |                                  |
| ■■   | **createIndex(键模式,选项)**                    | 创建索引                         |
| ■■   | createIndexes(键模式,选项)                      | 创建多个索引                     |
|      | ensureIndex(键模式,选项)                        | 已弃用，请使用createIndex        |
| ■■   | dropIndex(索引名)                               | 删除索引                         |
| ■■   | dropIndexes()                                   | 删除所有索引                     |
|      | reIndex()                                       |                                  |
|      | getIndexes()                                    | 获取所有索引                     |
|      | dataSize()                                      |                                  |
| ■■   | drop()                                          | 删除这个集合                     |
|      | getDB()                                         | 获取数据库                       |
|      | getPlanCache()                                  | 获取与集合关联的查询计划缓存     |
| ■■   | distinct(键,查询语句,选项)                      | 去重                             |
| ■■   | count(query={},选项)                            | 计数                             |
| ■■   | group(分组)                                     | 分组                             |
|      | mapReduce(mapFunction,reduceFunction,选项)      |                                  |
|      | aggregate(pipeline,选项)                        | 聚合                             |
|      | renameCollection(新名称,dropTarget)             | 重命名                           |
|      | runCommand(集合名,选项)                         |                                  |
|      | stats(选项)                                     |                                  |
|      | storageSize()                                   | 包括分配给此集合的可用空间       |
|      | totalIndexSize()                                | 所有索引的大小                   |
|      | totalSize()                                     | 所有数据和索引的大小             |
|      | validate()                                      |                                  |
|      | getShardVersion()                               | 仅用于分片                       |
|      | getShardDistribution()                          | 打印有关集群中数据分布的统计信息 |
|      | latencyStats()                                  | 显示此集合的操作延迟直方图       |

### `db.集合名.find().`开头命令

| 常用 | 命令                    | 解释       |
| ---- | ----------------------- | ---------- |
|      | help()                  | 帮助       |
| ■■   | limit(n)                | 限制       |
| ■■   | skip(n)                 | 跳过       |
| ■■   | sort(...)               | 排序       |
| ■■   | aggregate(...)          | 聚合       |
| ■■   | count(...)              | 计数       |
| ■■   | distinct(...)           | 去重       |
| ■■   | find(...)               | 查询       |
|      | findAndModify(...)      | 查询并更改 |
| ■■   | group(...)              | 分组       |
|      | remove(...)             | 删除       |
|      | update(...)             | 更新       |
|      | getCollection()         |            |
|      | getVerbosity()          |            |
|      | setVerbosity(verbosity) |            |

## 插入操作

- `save()`：如果`_id`主键存在则更新数据，如果不存在就插入数据。该方法新版本中已废弃，可以使用`db.collection.insertOne()`或`db.collection.replaceOne()`来代替
- `insert()`：若插入的数据主键已经存在，则会抛`org.springframework.dao.DuplicateKeyException`异常，提示主键重复，不保存当前数据
- `insertOne()`：用于向集合插入一个新文档
- `insertMany()`：用于向集合插入一个多个文档

### insertOne() 插入一个

```js
db.a.insertOne({
  _id: 1,
  "字段名可以不带引号": "有中文或特殊符号需要用引号",
  objectId: ObjectId(),
  string: "字符串类型",
  boolean: true,
  int: NumberInt("123"),
  long: NumberLong("123"),
  double: 123.45,
  array: [1, 2, 3, 4, 5],
  object: {
    string: "字符串类型",
    boolean: true,
    int: NumberInt("123"),
    long: NumberLong("123"),
    double: 123.45
  },
  null: null,
  date: ISODate("2018-06-05T15:28:33.705+08:00")
})
```

- 向集合a中插入一条数据，指定`_id`是`1`，不指定则自动生成`ObjectId()`
- 插入成功返回`{"acknowledged":true,"insertedId":_id}`
- 如果`_id`重复，会报错

### insertMany() 插入多个

```js
db.a.insertMany([
  {
    string: "字符串类型",
    boolean: true,
    int: NumberInt("123"),
    long: NumberLong("123"),
    double: 123.45
  },
  {
    string: "字符串类型",
    boolean: true,
    int: NumberInt("124"),
    long: NumberLong("123"),
    double: 123.45
  },
  {
    string: "字符串类型",
    boolean: true,
    int: NumberInt("125"),
    long: NumberLong("123"),
    double: 123.45
  }
])
```

## 更新操作

### updateOne() 更新一个

```js
db.a.updateOne(
  {
    "int": NumberInt("123")
  },
  {
    $set: {
      "double": 111.11
    },
    $currentDate: {
      lastModified: true
    }
  }
)
```

- 第一个括号内是匹配的条件，为`int=123`
- 第二个括号是修改的内容
  - `$set`是修改字段的值，修改`double=111.11`
  - `$currentDate`是修改时间，指定字段`lastModified`
- 如果有多个匹配的，则修改查询到的第一条数据

## 删除

### deleteOne() 删除一个

```js
db.a.deleteOne(
  {
    "int": NumberInt("123")
  }
)
```

## 查询操作

### find() 查询

#### 普通查询

查询int字段为124的所有记录，显示所有字段

```js
db.a.find(
  {
    int: 124
  }
)
```

#### AND条件查询

查询int为124，long为123的记录

```js
db.a.find(
  {
    int: 124,
    long: 123
  }
)
```

#### OR条件查询

查询boolean为true或(int为124，long为123)的记录

```js
db.a.find(
  {
    $or: [
      {
        int: 124,
        long: 123
      },
      {
        boolean: true
      }
    ]
  }
)
```

查询boolean为true或int为124或long为123的记录

```js
db.a.find(
  {
    $or: [
      {
        int: 124
      },
      {
        long: 123
      },
      {
        boolean: true
      }
    ]
  }
)
```

#### 指定字段

只显示字段int和long，去除字段_id(不去除会默认显示)

```js
db.a.find(
  {
    int: 124
  },
  {
    _id: 0,
    int: 1,
    long: 1
  }
)
```

#### 判断条件查询

查询int小于124的记录

```js
db.a.find(
  {
    int: {
      $lt: 124
    }
  }
)
```

##### 判断条件

| 条件 | 语句                     |
| ---- | ------------------------ |
| `=`  | `{<key>:<value>}`        |
| `<`  | `{<key>:{$lt:<value>}}`  |
| `<=` | `{<key>:{$lte:<value>}}` |
| `>`  | `{<key>:{$gt:<value>}}`  |
| `>=` | `{<key>:{$gte:<value>}}` |
| `!=` | `{<key>:{$ne:<value>}}`  |

#### limit()与skip() 限制与跳过

跳过第一条，只显示2条

```js
db.a.find().limit(2).skip(1)
```

#### sort() 排序

先long降序，在int升序显示

```js
db.a.find().sort(
  {
    int: 1,
    long:  - 1
  }
)
```

#### aggregate() 聚合

以long字段分组，计算个数

```js
db.a.aggregate(
  [
    {
      $group: {
        _id: "$long",
        int: {
          $sum: 1
        }
      }
    }
  ]
)
```

以long字段分组，计算int字段总和

```js
db.a.aggregate(
  [
    {
      $group: {
        _id: "$long",
        int: {
          $sum: "$int"
        }
      }
    }
  ]
)
```

##### 聚合表达式

| 常用 | 表达式    | 描述                                                                               |
| ---- | --------- | ---------------------------------------------------------------------------------- |
| ■■   | $sum      | 计算总和。                                                                         |
| ■■   | $avg      | 计算平均值                                                                         |
| ■■   | $min      | 获取集合中所有文档对应值得最小值。                                                 |
| ■■   | $max      | 获取集合中所有文档对应值得最大值。                                                 |
|      | $push     | 将值加入一个数组中，不会判断是否有重复的值。                                       |
|      | $addToSet | 将值加入一个数组中，会判断是否有重复的值，若相同的值在数组中已经存在了，则不加入。 |
|      | $first    | 根据资源文档的排序获取第一个文档数据。                                             |
|      | $last     | 根据资源文档的排序获取最后一个文档数据                                             |

##### 聚合管道操作

- MongoDB的聚合管道将MongoDB文档在一个管道处理完毕后将结果传递给下一个管道处理。管道操作是可以重复的
- 表达式：处理输入文档并输出。表达式是无状态的，只能用于计算当前聚合管道的文档，不能处理其它的文档

| 常用 | 表达式   | 描述                                                                                   |
| ---- | -------- | -------------------------------------------------------------------------------------- |
| ■■   | $project | 修改输入文档的结构。可以用来重命名、增加或删除域，也可以用于创建计算结果以及嵌套文档。 |
| ■■   | $match   | 用于过滤数据，只输出符合条件的文档。$match使用MongoDB的标准查询操作。                  |
| ■■   | $limit   | 用来限制MongoDB聚合管道返回的文档数。                                                  |
| ■■   | $skip    | 在聚合管道中跳过指定数量的文档，并返回余下的文档。                                     |
|      | $unwind  | 将文档中的某一个数组类型字段拆分成多条，每条包含数组中的一个值。                       |
| ■■   | $group   | 将集合中的文档分组，可用于统计结果。                                                   |
| ■■   | $sort    | 将输入文档排序后输出。                                                                 |
|      | $geoNear | 输出接近某一地理位置的有序文档。                                                       |

只显示int和long字段，不显示_id字段

```js
db.a.aggregate(
  {
    $project: {
      _id: 0,
      int: 1,
      long: 1
    }
  }
)
```

先执行match，int字段在122和126之间，再执行group操作

```js
db.a.aggregate(
  [
    {
      $match: {
        int: {
          $gt: 122,
          $lt: 126
        }
      }
    },
    {
      $group: {
        _id: "$long",
        int: {
          $sum: 1
        }
      }
    }
  ]
)
```

跳过前1个文档

```js
db.a.aggregate(
  {
    $skip: 1
  }
)
```

## 索引

### createIndex() 创建索引

创建字段int升序索引

```js
db.a.createIndex(
  {
    "int": 1
  }
)
```

创建字段int升序，long降序索引

```js
db.a.createIndex(
  {
    "int": 1,
    "long":  - 1
  }
)
```
