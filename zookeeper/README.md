# zookeeper

下载地址 <https://zookeeper.apache.org/releases.html>
文档地址 <https://zookeeper.apache.org/doc/r3.7.0/zookeeperCLI.html>

## 命令

| 常用 | 命令名               | 解释              |
| ---- | -------------------- | ----------------- |
| ■    | help                 | 帮助              |
|      | addauth              | 为ACL添加授权用户 |
| ■    | close                | 关闭连接          |
|      | config               | 配置              |
| ■    | connect              | 连接              |
| ■■   | create               | 创建              |
| ■■   | delete               | 删除              |
| ■■   | deleteall            | 删除全部          |
|      | delquota             | 删除配额          |
| ■■   | get                  | 获取              |
|      | getAcl               | 获取ACL权限       |
|      | getAllChildrenNumber | 获取节点数        |
|      | getEphemerals        | 获取临时节点      |
|      | history              | 历史              |
|      | listquota            | 获取配额          |
| ■■   | ls                   | 列出子节点        |
|      | printwatches         | 开关监听          |
| ■    | quit                 | 退出              |
|      | reconfig             | 重新配置          |
|      | redo                 | 重做              |
|      | removewatches        | 移除监听          |
| ■■   | set                  | 设置(更新)        |
|      | setAcl               | 设置ACL权限       |
|      | setquota             | 设置配额          |
|      | stat                 | 显示统计数据      |
|      | sync                 | 主从之间同步数据  |
| ■    | version              | 版本              |
|      | whoami               | 身份信息          |

### create 创建

**create [-s] [-e] [-c] [-t ttl] path [data] [acl]**

参数：

- `■■-s` : 带序号(sequential)的节点。10位数字序号，每创建一个，序号递增
- `■■-e` : 临时(ephemeral)节点。当客户端关闭连接时，节点被删掉
- `-c` : 容器(container)节点。最后一个子节点删除时，容器被删除
- `-t ttl` : ttl节点(毫秒)。超时后，节点被删掉
- `■■path` : 路径
- `■■data` : 数据
- `acl` : ACL权限

例子：

- `create /persistent_node` : 创建一个永久节点persistent_node，无数据，返回`Created /persistent_node`
- `create -e /ephemeral_node mydata` : 创建一个临时节点ephemeral_node，数据为mydata，返回`Created /ephemeral_node`
- `create -s /persistent_sequential_node mydata` : 创建一个永久带序号的节点persistent_sequential_node，返回`Created /persistent_sequential_node0000000002`
- `create -s /ephemeral_sequential_node mydata` : 创建一个临时带序号的节点ephemeral_sequential_node，返回`Created /ephemeral_sequential_node0000000003`

注意：

- 不能连续创建多级节点，如需创建`/a/b`，需要先`create /a`，再`create /a/b`
- 不能创建已存在的节点

### set 设置(更新)

**set [-s] [-v version] path data**

参数：

- `■■-s` : 显示统计数据(同get)
- `-v version` : 恢复到指定版本号
- `■■path` : 路径
- `■■data` : 数据

例子：

- `delete /persistent_node` : 删除节点persistent_node

注意：

- 只能更新已存在的节点

### delete 删除

**delete [-v version] path**

参数：

- `-v version` : 版本号。删除指定版本的数据

例子：

- `delete /persistent_node` : 删除节点persistent_node

注意：

- 不能删除不存在的节点
- 不能删除含有子节点的节点

### deleteall 删除全部

**deleteall path [-b batch size]**

参数：

- `-b batch size` : 批次删除。一次删除指定大小

例子：

- `delete /a` : 删除节点a(含有子节点)

注意：

- 不能删除不存在的节点

### get 获取

**get [-s] [-w] path**

参数：

- `■■-s` : 显示统计数据
- `■■-w` : 打开监听

例子：

- `get /a` : 获取节点a数据，显示数据`abc`
- `get -s /a` : 获取节点a数据，显示数据`abc`，和统计数据：

  ```txt
  cZxid = 0x1e 创建的事务zxid
  ctime = Sat Feb 26 20:43:17 CST 2022 创建时间
  mZxid = 0x1e 最后修改的事务zxid
  mtime = Sat Feb 26 20:43:17 CST 2022 最后修改时间
  pZxid = 0x1e 最后修改的子节点zxid
  cversion = 0 节点修改次数
  dataVersion = 0 数据修改次数
  aclVersion = 0 acl修改次数
  ephemeralOwner = 0x0 临时节点拥有者的session id，永久节点为0
  dataLength = 3 数据长度
  numChildren = 0 子节点数量
  ```

- `get -w /a` : 获取节点a数据，显示数据`abc`。后台会开启监听，当数据变化时会提醒(仅一次)

### 列出子节点

**ls [-s] [-w] [-R] path**

参数：

- `■■-s` : 显示统计数据(同get)
- `■■-w` : 打开监听(同get)
- `■■-R` : 显示递归节点

例子：

- `ls /a` : 获取节点a下的子节点，显示数据`[b, c]`
- `ls -R /a` : 递归获取节点a下的子节点，显示数据:

  ```txt
  /a
  /a/b
  /a/c
  /a/c/d
  ```
