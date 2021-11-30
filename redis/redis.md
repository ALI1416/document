# redis

## 通用命令
文档地址 https://redis.io/commands/copy

| 常用 | 命令名               | 解释                     | 用法                  | 返回值                            |
| ---- | -------------------- | ------------------------ | --------------------- | --------------------------------- |
| ■■   | del                  | 删除键                   | del [键]...           | 删除成功的个数                    |
| ■    | unlink               | 非阻塞异步删除           | unlink [键]...        | 删除成功的个数                    |
| ■■   | exists               | 是否存在键               | exists [键]...        | 存在键的个数                      |
| ■■   | expire               | 设置过期时间(秒)         | expire 键 秒          | 成功:1;失败:0                     |
| ■    | expireat             | 设置到期时间(秒时间戳)   | expire 键 秒时间戳    | 成功:1;失败:0                     |
| ■    | expiretime (7.0.0+)  | 设置到期时间(秒时间戳)   | expire 键 秒时间戳    | 成功:秒时间戳;失败:-1;不存在:-2   |
| ■    | pexpire              | 设置过期时间(毫秒)       | pexpire 键 毫秒       | 成功:1;失败:0                     |
| ■    | pexpireat            | 设置到期时间(毫秒时间戳) | pexpire 键 毫秒时间戳 | 成功:1;失败:0                     |
| ■    | pexpiretime (7.0.0+) | 设置到期时间(毫秒时间戳) | pexpire 键 毫秒时间戳 | 成功:毫秒时间戳;失败:-1;不存在:-2 |
| ■■   | ttl                  | 获取秒过期时间           | ttl 键                | 过期:秒;不过期:-1;不存在:-2       |
| ■    | pttl                 | 获取毫秒过期时间         | pttl 键               | 过期:毫秒;不过期:-1;不存在:-2     |
| ■■   | persist              | 持久化(移除过期时间)     | persist 键            | 成功:1;失败:0                     |
| ■■   | **keys**             | 模糊查询                 | keys 匹配模式         | 匹配成功的数组                    |
| ■■   | **scan**             | 扫描                     |                       |                                   |
| ■    | rename               | 重命名                   | rename 旧键名 新键名  | 成功:OK(新键名已存在会被覆盖);    |
|      |                      |                          |                       | 不存在旧键:ERR no such key        |
| ■    | renamenx             | 重命名(不覆盖)           | renamex 旧键名 新键名 | 成功:1;已存在新键:0;              |
|      |                      |                          |                       | 不存在旧键:ERR no such key        |
| ■    | type                 | 类型                     | type 键               | none(键不存在)/string/list        |
|      |                      |                          |                       | /set/zset/hash/stream             |
|      | randomkey            | 随机键                   | randomkey             | 存在:随机键;不存在:null           |
|      | move                 | 移动键到其他库           | move 键 库            | 成功:1;失败:0                     |
|      | copy (6.2.0+)        | 复制键                   | copy 原键 目的键      | 成功:1;失败:0                     |
|      | dump                 | 导出序列化的值           | dump 键               | 存在:序列化的值;不存在:null       |
|      | restore              | 恢复序列化的值           |                       |                                   |
|      | migrate              | 迁移                     |                       |                                   |
|      | object encoding      | 对象编码                 | object encoding 键    | 存在:编码;不存在:null             |
|      | object freq          | 对象访问频率计数器       | object freq 键        | 存在:计数器的值;不存在:null       |
|      | object help (6.2.0+) | 对象帮助                 | object help           | 子命令列表及其描述数组            |
|      | object idletime      | 对象空闲时间(秒)         | object idletime 键    | 存在:空闲时间;不存在:null         |
|      | object refcount      | 对象引用计数             | object refcount 键    | 存在:引用计数;不存在:null         |
|      | sort                 | 排序                     |                       |                                   |
|      | sort_ro              | 排序不改变原数据         |                       |                                   |
|      | touch                | 更改最后访问时间         | touch [键]...         | 更改成功的次数                    |
|      | wait                 | 阻塞                     |                       |                                   |

### keys 模糊查询
**格式：`keys 匹配模式`**

**匹配规则**
- * : 匹配0+个任意字符
- ? : 匹配1个任意字符
- [abc] : 匹配1个指定字符(括号内字符abc)
- [^abc] : 不匹配1个指定字符(括号内字符abc)
- [A-z] : 匹配1个指定字符(括号内字符A-z)
- \ : 转义(字符*?[]^-\等)

**示例**
| 匹配模式  | 匹配示例                    | 解释                            |
| --------- | --------------------------- | ------------------------------- |
| a         | a                           | 只有a                           |
| a*        | a/ab/abc/aaa...             | a是第1个字符，后面任意          |
| a?        | aa/ab/ac/ad...              | a是第1个字符，后面只能有1个字符 |
| \*a*      | a/ab/ba/bab/bbabb/bbaabb... | 包含a即可                       |
| ?a?       | aaa/bab/cad...              | a的左右只能有1个字符            |
| [abc]     | a/b/c                       | 只有a/b/c                       |
| [^abc]    | d/e/f...                    | 除了a/b/c                       |
| [A-z]     | a/b/c/A/B/C...              | A-Z和a-z                        |
| a\\[*     | a[或a[b或a[c...             | 匹配转义字符[                   |
| a\\\\\\[* | a\\[或a\\[a或a\\[b...       | 匹配转义字符\                   |

## 字符串命令
文档地址 https://redis.io/commands/append

| 常用 | 命令名             | 解释                     | 用法                | 返回值                              |
| ---- | ------------------ | ------------------------ | ------------------- | ----------------------------------- |
| ■    | decr               | 数字类型递减1            | decr 键             | 递减后的值(键不存在创建值0后再递减) |
| ■■   | decrby             | 数字类型递减             | decrby 键 减量      | 递减后的值(键不存在创建值0后再递减) |
| ■    | incr               | 数字类型递增1            | incr 键             | 递增后的值(键不存在创建值0后再递增) |
| ■■   | incrby             | 数字类型递增             | incrby 键 增量      | 递增后的值(键不存在创建值0后再递增) |
|      | incrbyfloat        | 浮点类型递增             | incrbyfloat 键 增量 | 递增后的值(键不存在创建值0后再递增) |
| ■■   | get                | 获取                     | get 键              | 存在:值;不存在:null                 |
|      | getset (6.2.0-set) | 获取并放入               | getset 键 值        | 存在:值;不存在:null                 |
|      | getdel             | 获取并删除               | getdel 键           | 存在:值;不存在:null                 |
|      | getex              | 获取并设置过期时间       |                     |                                     |
| ■    | mget               | 获取多个                 | mget [键]...        | 存在:值数组;不存在:null             |
| ■■   | **set**            | 放入                     | set 键 值           | OK                                  |
| ■■   | setnx              | 放入(不覆盖)             | setnx 键 值         | 成功:1;失败:0                       |
| ■■   | setex              | 放入并设置过期时间(秒)   | psetex 键 秒 值     | OK(键名已存在会覆盖)                |
|      | psetex             | 放入并设置过期时间(毫秒) | psetex 键 毫秒 值   | OK(键名已存在会覆盖)                |
| ■    | mset               | 放入多个                 | mset [键 值]...     | OK(键名已存在会覆盖)                |
| ■    | msetnx             | 放入多个(不覆盖)         | msetnx [键 值]...   | 成功:1;全部未设置(至少一个键存在):0 |
|      | append             | 追加字符串               | append 键 字符串    | 追加后的字符串长度(键不存在将创建)  |
|      | getrange           | 截取字符串               | getrange 键 头 尾   | 存在:截取后的值;不存在:null         |
|      | setrange           | 覆盖字符串               | setrange 键 偏移 值 | 修改后字符串长度                    |
|      | strlen             | 字符串长度               | strlen 键           | 存在:长度;不存在:0                  |
|      | stralgo (6.0.0+)   | 使用算法                 |                     |                                     |

### set 设置值
**格式：`set 键 值 [EX 秒 | PX 毫秒 | EXAT 秒时间戳 | PXAT 毫秒时间戳 | KEEPTTL] [NX | XX] [GET]`**

**选项**
| 常用 | 选项名           | 解释                       | 用法            |
| ---- | ---------------- | -------------------------- | --------------- |
| ■■   | EX               | 设置过期时间(秒)           | EX 秒           |
|      | PX               | 设置过期时间(毫秒)         | PX 毫秒         |
|      | EXAT (6.2.0+)    | 设置到期时间(秒时间戳)     | EXAT 秒时间戳   |
|      | PXAT (6.2.0+)    | 设置到期时间(毫秒时间戳)   | PXAT 毫秒时间戳 |
|      | KEEPTTL (6.0.0+) | 保留原有过期时间           | KEEPTTL         |
| ■    | NX               | 不存在键才设置             | NX              |
| ■    | XX               | 存在键才设置               | XX              |
|      | GET (6.2.0+)     | 获取旧的值                 | GET             |
|      | NX GET (7.0.0+)  | 不存在键才设置并获取旧的值 | NX GET          |

**返回值**
| 返回值 | 情形                 |
| ------ | -------------------- |
| OK     | 未指定GET且执行成功  |
| null   | 指定NX或XX但执行失败 |
| null   | 指定GET但键不存在    |
| 值     | 指定GET且键存在      |

## 哈希命令
文档地址 https://redis.io/commands/hdel

| 常用 | 命令名              | 解释               | 用法                    | 返回值                                  |
| ---- | ------------------- | ------------------ | ----------------------- | --------------------------------------- |
| ■■   | hdel                | 删除项             | hdel 键 [项]...         | 删除成功的个数                          |
| ■■   | hexists             | 是否存在项         | hexists 键 项           | 存在:1;不存在:0                         |
| ■■   | hget                | 获取项的值         | hget 键 项              | 存在:值;不存在:null                     |
| ■    | hmget               | 获取多个项的值     | hmget 键 [项]...        | 值数组(项不存在为null)                  |
| ■■   | hincrby             | 整数类型项的值递增 | hincrby 键 项 增量      | 递增后的值(键或项不存在创建值0后再递增) |
|      | hincrbyfloat        | 浮点类型项的值递增 | hincrbyfloat 键 项 增量 | 递增后的值(键或项不存在创建值0后再递增) |
| ■    | hmset               | 设置多个项的值     | hmset 键 [项 值]...     | OK                                      |
| ■■   | hset                | 设置多个项和值     | hset 键 [项 值]...      | 添加成功个数(已存在项会被覆盖)          |
| ■■   | hsetnx              | 设置项和值(不覆盖) | hsetnx 键 项 值         | 成功:1;失败:0                           |
| ■■   | hlen                | 获取项的个数       | hlen 键                 | 存在:项的个数;不存在:0                  |
| ■■   | **hscan**           | 见scan             |                         |                                         |
|      | hkeys               | 获取所有项的名称   | hkeys 键                | 项数组                                  |
|      | hvals               | 获取所有项的值     | hvals 键                | 值数组                                  |
|      | hgetall             | 获取所有项和值     | hgetall 键              | 项和值数组                              |
|      | hstrlen             | 获取项的值的长度   | hstrlen 键 项           | 存在:项的值的长度;不存在:0              |
|      | hrandfield (6.2.0+) | 获取随机项和值     |                         |                                         |

## 列表命令
文档地址 https://redis.io/commands/blmove

| 常用 | 命令名                    | 解释                 | 用法                        | 返回值                      |
| ---- | ------------------------- | -------------------- | --------------------------- | --------------------------- |
| ■■   | lindex                    | 获取指定下标的值     | lindex 键 下标              | 存在:值;不存在或超出:null   |
| ■    | linsert                   | 指定值前插入         | linsert 键 before 指定值 值 | 成功:长度;不存在:-1         |
| ■    | linsert                   | 指定值后插入         | linsert 键 after 指定值 值  | 成功:长度;不存在:-1         |
| ■■   | lpush                     | 左侧推入             | lpush 键 [值]...            | 长度                        |
| ■    | lpushx                    | 存在列表时左侧推入   | lpushx 键 [值]...           | 长度                        |
| ■■   | rpush                     | 右侧推入             | rpush 键 [值]...            | 长度                        |
| ■    | rpushx                    | 存在列表时右侧推入   | rpushx 键 [值]...           | 长度                        |
| ■■   | lpop                      | 左侧弹出             | lpop 键                     | 存在:值;不存在:null         |
| ■    | lpop (6.2.0+)             | 左侧弹出多个         | lpop 键 个数                | 存在:值数组;不存在:null     |
|      | blpop                     | lpop+阻塞            | lpop [键]... 时间           | 存在:键和值数组;不存在:null |
| ■■   | rpop                      | 右侧弹出             | lpop 键                     | 存在:值;不存在:null         |
| ■    | rpop (6.2.0+)             | 右侧弹出多个         | lpop 键 个数                | 存在:值数组;不存在:null     |
|      | brpop                     | rpop+阻塞            | rpop [键]... 时间           | 存在:键和值数组;不存在:null |
| ■■   | llen                      | 获取列表长度         | llen 键                     | 成功:长度;不存在:0          |
| ■    | lpos (6.0.6+)             | 获取指定值的下标     |                             |                             |
| ■    | lrange                    | 获取指定下标之间的值 | lrange 键 起始 结束         | 值数组                      |
| ■    | ltrim                     | 保留指定下标之间的值 | ltrim 键 起始 结束          | OK                          |
| ■    | lset                      | 设置指定下标为指定值 | lset 键 下标 值             | OK                          |
| ■    | lrem                      | 删除指定值指定次数   | lrem 键 次数 值             | 删除成功个数                |
|      | rpoplpush (6.2.0-lmove)   | 源右弹到目的左       | rpoplpush 源键 目的键       | 存在:值;不存在:null         |
|      | brpoplpush (6.2.0-blmove) | rpoplpush+阻塞       | rpoplpush 源键 目的键 时间  | 存在:值;不存在:null         |
|      | lmove (6.2.0+)            | 源和目的删除添加操作 |                             |                             |
|      | blmove (6.2.0+)           | lmove+阻塞           |                             |                             |
|      | lmpop (7.0.0+)            | 多个键弹出多个值     |                             |                             |
|      | blmpop (7.0.0+)           | lmpop+阻塞           |                             |                             |

## 集合命令
文档地址 https://redis.io/commands/sadd

| 常用 | 命令名              | 解释                 | 用法                            | 返回值                       |
| ---- | ------------------- | -------------------- | ------------------------------- | ---------------------------- |
| ■■   | sadd                | 添加元素             | sadd 键 [值]...                 | 添加成功的个数(不包括已存在) |
| ■■   | srem                | 删除多个值           | srem 键 [值]...                 | 成功个数                     |
| ■■   | scard               | 个数                 | scard 键                        | 元素个数                     |
| ■■   | smembers            | 所有元素             | smembers 键                     | 值数组                       |
| ■■   | sismember           | 是否存在元素         | sismember 键 值                 | 存在:1;不存在:0              |
|      | smismember (6.2.0+) | 是否存在多个元素     | smismember 键 [值]...           | [1,0]数组                    |
| ■■   | sdiff               | 差集                 | sdiff [键]...                   | 第一个键与后面的差集         |
|      | sdiffstore          | 差集并储存           | sdiffstore 源键 目的键 [键]...  | 元素个数(存储，存在会覆盖)   |
| ■■   | sinter              | 交集                 | sinter [键]...                  | 第一个键与后面的交集         |
|      | sintercard (7.0.0+) | 交集并限制元素个数   | sintercard [键]... limit 个数   | 元素个数                     |
|      | sinterstore         | 交集并储存           | sinterstore 源键 目的键 [键]... | 元素个数(存储，存在会覆盖)   |
| ■■   | sunion              | 并集                 | sunion [键]...                  | 第一个键与后面的交集         |
|      | sunionstore         | 并集并储存           | sunionstore 源键 目的键 [键]... | 元素个数(存储，存在会覆盖)   |
| ■    | spop                | 返回并删除1个随机值  | spop 键                         | 成功:值;失败:null            |
| ■    |                     | 返回并删除多个随机值 | spop 键 个数                    | 成功:值数组;失败:空数组      |
| ■    | srandmember         | 返回1个随机值        | srandmember 键                  | 成功:值;失败:null            |
| ■    |                     | 返回多个随机值       | srandmember 键 个数             | 成功:值数组;失败:空数组      |
|      | **sscan**           | 见scan               |                                 |                              |
|      | smove               | 移动元素到目的键     | smove 源键 目的键 值            | 成功:1;失败:0                |

## 有序集合命令
文档地址 https://redis.io/commands/bzmpop

| 常用 | 命令名           | 解释 | 用法 | 返回值 |
| ---- | ---------------- | ---- | ---- | ------ |
|      | bzmpop           |      |      |        |
|      | bzpopmax         |      |      |        |
|      | bzpopmin         |      |      |        |
|      | zadd             |      |      |        |
|      | zcard            |      |      |        |
|      | zcount           |      |      |        |
|      | zdiff            |      |      |        |
|      | zdiffstore       |      |      |        |
|      | zincrby          |      |      |        |
|      | zinter           |      |      |        |
|      | zintercard       |      |      |        |
|      | zinterstore      |      |      |        |
|      | zlexcount        |      |      |        |
|      | zmpop            |      |      |        |
|      | zmscore          |      |      |        |
|      | zpopmax          |      |      |        |
|      | zpopmin          |      |      |        |
|      | zrandmember      |      |      |        |
|      | zrange           |      |      |        |
|      | zrangebylex      |      |      |        |
|      | zrangebyscore    |      |      |        |
|      | zrangestore      |      |      |        |
|      | zrank            |      |      |        |
|      | zrem             |      |      |        |
|      | zremrangebylex   |      |      |        |
|      | zremrangebyrank  |      |      |        |
|      | zremrangebyscore |      |      |        |
|      | zrevrange        |      |      |        |
|      | zrevrangebylex   |      |      |        |
|      | zrevrangebyscore |      |      |        |
|      | zrevrank         |      |      |        |
|      | zscan            |      |      |        |
|      | zscore           |      |      |        |
|      | zunion           |      |      |        |
|      | zunionstore      |      |      |        |
