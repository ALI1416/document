# redis

## 通用命令
文档地址 https://redis.io/commands/copy

| 常用 | 命令名               | 解释                     | 用法                  | 返回值                            |
| ---- | -------------------- | ------------------------ | --------------------- | --------------------------------- |
|      | copy (6.2.0+)        | 复制键                   | copy 原键 目的键      | 1成功;0失败                       |
| ■■   | del                  | 删除键                   | del 键...             | 删除成功的个数                    |
|      | dump                 | 导出序列化的值           | dump 键               | 存在:序列化的值;不存在:null       |
| ■■   | exists               | 是否存在键               | exists 键...          | 存在键的个数                      |
| ■■   | expire               | 设置过期时间(秒)         | expire 键 秒          | 1成功;0失败                       |
| ■    | expireat             | 设置到期时间(秒时间戳)   | expire 键 秒时间戳    | 1成功;0失败                       |
| ■    | expiretime (7.0.0+)  | 设置到期时间(秒时间戳)   | expire 键 秒时间戳    | 成功:秒时间戳;失败:-1;不存在:-2   |
| ■■   | **keys**             | 模糊查询                 | keys 匹配模式         | 匹配成功的数组                    |
|      | migrate              | 迁移                     |                       |                                   |
| ■    | move                 | 移动键到其他库           | move 键 库            | 1成功;0失败                       |
|      | object encoding      | 对象编码                 | object encoding 键    | 存在:编码;不存在:null             |
|      | object freq          | 对象访问频率计数器       | object freq 键        | 存在:计数器的值;不存在:null       |
|      | object help (6.2.0+) | 对象帮助                 | object help           | 子命令列表及其描述数组            |
|      | object idletime      | 对象空闲时间(秒)         | object idletime 键    | 存在:空闲时间;不存在:null         |
|      | object refcount      | 对象引用计数             | object refcount 键    | 存在:引用计数;不存在:null         |
| ■■   | persist              | 持久化(移除过期时间)     | persist 键            | 1成功;0失败                       |
|      | pexpire              | 设置过期时间(毫秒)       | pexpire 键 毫秒       | 1成功;0失败                       |
|      | pexpireat            | 设置到期时间(毫秒时间戳) | pexpire 键 毫秒时间戳 | 1成功;0失败                       |
|      | pexpiretime (7.0.0+) | 设置到期时间(毫秒时间戳) | pexpire 键 毫秒时间戳 | 成功:毫秒时间戳;失败:-1;不存在:-2 |
|      | pttl                 | 毫秒过期时间             | pttl 键               | 过期:毫秒;不过期:-1;不存在:-2     |
|      | randomkey            | 随机键                   | randomkey             | 存在:随机键;不存在:null           |
| ■    | rename               | 重命名                   | rename 旧键名 新键名  | 成功:OK(新键名已存在会被覆盖);    |
|      |                      |                          |                       | 不存在旧键:ERR no such key        |
| ■    | renamenx             | 重命名(不覆盖)           | renamex 旧键名 新键名 | 成功:1;已存在新键:0;              |
|      |                      |                          |                       | 不存在旧键:ERR no such key        |
|      | restore              | 恢复序列化的值           |                       |                                   |
|      | **scan**             | 扫描                     |                       |                                   |
|      | sort                 | 排序                     |                       |                                   |
|      | sort_ro              | 排序不改变原数据         |                       |                                   |
|      | touch                | 更改最后访问时间         | touch 键...           | 更改成功的次数                    |
| ■■   | ttl                  | 秒过期时间               | ttl 键                | 过期:秒;不过期:-1;不存在:-2       |
| ■    | type                 | 类型                     | type 键               | none(键不存在)/string/list        |
|      |                      |                          |                       | /set/zset/hash/stream             |
| ■    | unlink               | 非阻塞异步删除           | unlink 键...          | 删除成功的个数                    |
|      | wait                 | 阻塞                     |                       |                                   |

### keys 模糊查询
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

| 常用 | 命令名      | 解释 | 用法 | 返回值 |
| ---- | ----------- | ---- | ---- | ------ |
|      | append      |      |      |        |
|      | decr        |      |      |        |
|      | decrby      |      |      |        |
|      | get         |      |      |        |
|      | getdel      |      |      |        |
|      | getex       |      |      |        |
|      | getrange    |      |      |        |
|      | getset      |      |      |        |
|      | incr        |      |      |        |
|      | incrby      |      |      |        |
|      | incrbyfloat |      |      |        |
|      | mget        |      |      |        |
|      | mset        |      |      |        |
|      | msetnx      |      |      |        |
|      | psetex      |      |      |        |
|      | set         |      |      |        |
|      | setex       |      |      |        |
|      | setnx       |      |      |        |
|      | setrange    |      |      |        |
|      | stralgo     |      |      |        |
|      | strlen      |      |      |        |

## 列表命令
文档地址 https://redis.io/commands/blmove

| 常用 | 命令名     | 解释 | 用法 | 返回值 |
| ---- | ---------- | ---- | ---- | ------ |
|      | blmove     |      |      |        |
|      | blmpop     |      |      |        |
|      | blpop      |      |      |        |
|      | brpop      |      |      |        |
|      | brpoplpush |      |      |        |
|      | lindex     |      |      |        |
|      | linsert    |      |      |        |
|      | llen       |      |      |        |
|      | lmove      |      |      |        |
|      | lmpop      |      |      |        |
|      | lpop       |      |      |        |
|      | lpos       |      |      |        |
|      | lpush      |      |      |        |
|      | lpushx     |      |      |        |
|      | lrange     |      |      |        |
|      | lrem       |      |      |        |
|      | lset       |      |      |        |
|      | ltrim      |      |      |        |
|      | rpop       |      |      |        |
|      | rpoplpush  |      |      |        |
|      | rpush      |      |      |        |
|      | rpushx     |      |      |        |

## 集合命令
文档地址 https://redis.io/commands/sadd

| 常用 | 命令名      | 解释 | 用法 | 返回值 |
| ---- | ----------- | ---- | ---- | ------ |
|      | sadd        |      |      |        |
|      | scard       |      |      |        |
|      | sdiff       |      |      |        |
|      | sdiffstore  |      |      |        |
|      | sinter      |      |      |        |
|      | sintercard  |      |      |        |
|      | sinterstore |      |      |        |
|      | sismember   |      |      |        |
|      | smembers    |      |      |        |
|      | smismember  |      |      |        |
|      | smove       |      |      |        |
|      | spop        |      |      |        |
|      | srandmember |      |      |        |
|      | srem        |      |      |        |
|      | sscan       |      |      |        |
|      | sunion      |      |      |        |
|      | sunionstore |      |      |        |

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
