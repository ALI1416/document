# linux

## 目录

| 名称        | 解释               |
| ----------- | ------------------ |
| /bin        | 常用命令           |
| /sbin       | root用户命令       |
| /boot       | 系统文件           |
| /root       | root用户目录       |
| /dev        | 外部设备           |
| /etc        | 系统配置           |
| /home       | 用户目录           |
| /lib        | 库文件目录         |
| /lost+found | 故障期间保存的文件 |
| /media      | 自动挂载目录       |
| /mnt        | 手动挂载目录       |
| /opt        | 大型软件安装目录   |
| /proc       | 内存映射           |
| /sys        | 内核映射           |
| /srv        | 服务数据           |
| /tmp        | 临时文件           |
| /run        | 临时文件           |
| /usr        | 共享目录           |
| /usr/bin    | 用户文件           |
| /usr/sbin   | root用户文件       |
| /usr/share  | 共享数据           |
| /usr/local  | 软件安装目录       |
| /var        | 可变文件           |
| /var/log    | 日志文件           |
| /var/tmp    | 临时文件           |

## 权限

使用`ls -l`命令查看文件或文件夹权限，例如：

```txt
ali@ali-PC:~/test$ ls -l
总计 8
-rw-rw-r-- 1 ali ali    5  1月  7 15:11 file
drwxrwxr-x 2 ali ali 4096  1月  7 15:07 folder
```

其中`-rw-rw-r--`为权限，总共10字符

第1字符为文件类型

| 常用 | 字符 | 类型         |
| ---- | ---- | ------------ |
| ■■   | -    | 普通文件     |
| ■■   | d    | 文件夹       |
| ■    | l    | 符号链接     |
|      | b    | 块设备文件   |
|      | c    | 字符设备文件 |
|      | p    | 管道文件     |
|      | s    | 套接口文件   |

对应颜色

<span style="background:#181818;color:#CCCCCC;">白色：普通文件</span>

<span style="background:#181818;color:#3B8EEA;">蓝色：目录</span>

<span style="background:#181818;color:#23D16E;">绿色：可执行文件</span>

<span style="background:#181818;color:#F14C36;">红色：压缩文件或档案文件</span>

<span style="background:#181818;color:#F5F531;">黄色：设备文件</span>

<span style="background:#181818;color:#29B8B6;">浅蓝色：链接文件</span>

<span style="background:#181818;color:#D662A0;">桃红色：套接字文件</span>

<span style="background:#181818;color:#D670D6;">洋红色：图像和视频文件</span>

<span style="background:#181818;color:#11A8CD;">桃红色：音频文件</span>

<span style="background:#181818;color:#9E9E9B;">灰色：其他文件</span>

<span style="background:#E5E510;color:#181818;">黑色+黄色背景：设置组ID文件</span>

<span style="background:#C01C28;color:#CCCCCC;">白色+红色背景：设置用户ID文件</span>

<span style="background:#12488B;color:#CCCCCC;">白色+蓝色背景：粘滞位目录</span>

<span style="background:#0DBC79;color:#3B8EEA;">蓝色+绿色背景：其他可写目录</span>

<span style="background:#0DBC79;color:#181818;">黑色+绿色背景：粘滞位+其他可写目录</span>

后面9字符分为3组，每组3个，代表文件权限

- 第1组，为文件所有者(owner)权限
- 第2组，为文件所属用户群组(group)权限
- 第3组，为其他用户(others)权限

权限分别为r读、w写、x执行

| 符号 | 权限       | 二进制 | 八进制 |
| ---- | ---------- | ------ | ------ |
| rwx  | 读\写\执行 | 111    | 7      |
| rw-  | 读\写      | 110    | 6      |
| r-x  | 读\执行    | 101    | 5      |
| r--  | 读         | 100    | 4      |
| -wx  | 写\执行    | 011    | 3      |
| -w-  | 写         | 010    | 2      |
| --x  | 执行       | 001    | 1      |
| ---  | 无         | 000    | 0      |

## 命令

| 常用 | 命令                | 作用                                       |
| ---- | ------------------- | ------------------------------------------ |
| ■    | alias               | 别名                                       |
| ■    | unalias             | 删除别名                                   |
| ■■   | bg / &              | 后台运行                                   |
| ■■   | fg                  | 前台运行                                   |
| ■■   | jobs                | 显示后台任务状态                           |
| ■■   | cd                  | 切换目录                                   |
| ■    | pwd                 | 当前目录                                   |
| ■■   | ls                  | 目录内容                                   |
| ■■   | mkdir               | 创建目录                                   |
| ■■   | rmdir               | 删除空目录                                 |
| ■    | du                  | 统计目录内容容量                           |
| ■    | touch               | 创建文件                                   |
| ■■   | cp                  | 复制文件                                   |
| ■■   | mv                  | 移动文件或目录                             |
| ■■   | rm                  | 删除文件                                   |
| ■    | file                | 文件属性                                   |
| ■■   | cat                 | 显示文件内容                               |
| ■    | tac                 | 按行倒序显示文件内容                       |
| ■    | more                | 分页显示文件内容                           |
| ■■   | less                | 分页显示文件内容                           |
| ■    | head                | 显示文件头部内容                           |
| ■    | tail                | 显示文件尾部内容                           |
|      | w                   | 所有登录用户信息                           |
|      | who                 | 所有登录用户信息                           |
|      | whoami              | 登录用户                                   |
|      | which               | 命令位置                                   |
|      | bind                | 设定Readline键绑定和变量                   |
|      | builtin             | 执行shell内建                              |
|      | caller              | 回当前子例程调用的上下文                   |
|      | command             | 执行一个简单命令或者显示命令的相关信息     |
|      | compgen             | 依据选项显示可能的补全                     |
|      | complete            | 指定Readline如何补全参数                   |
|      | compopt             | 修改或显示补全选项                         |
|      | coproc              | 创建副进程                                 |
|      | declare / typeset   | 设定变量的值和属性                         |
|      | set                 | 设定或取消设定shell选项和位置参数的值      |
|      | unset               | 取消设定shell变量和函数的值和属性          |
|      | disown              | 当前shell中删除任务                        |
|      | echo                | 将参数写到标准输出                         |
|      | enable              | 启用和禁用shell内建                        |
|      | eval                | 将参数作为shell命令执行                    |
|      | exec                | 使用指定命令替换shell                      |
|      | exit                | 退出shell                                  |
|      | export              | 为shell变量设定导出属性                    |
|      | fc                  | 从历史列表中显示或者执行命令               |
|      | getopts             | 解析选项参数                               |
|      | hash                | 记住或显示程序位置                         |
|      | help                | 帮助                                       |
|      | history             | 显示或操纵历史列表                         |
|      | kill                | 向一个任务发送一个信号                     |
|      | let                 | 对算术表达式进行求值                       |
|      | local               | 定义局部变量                               |
|      | logout              | 退出一个登录shell                          |
|      | mapfile / readarray | 从标准输入读取行到索引数组变量中           |
|      | dirs                | 显示目录栈                                 |
|      | pushd               | 将目录添加到栈中                           |
|      | popd                | 从栈中删除目录                             |
|      | printf              | 格式化并打印                               |
|      | read                | 从标准输入读取一行，并将其分割为不同的字段 |
|      | readonly            | 标记shell变量为不可改变                    |
|      | shift               | 移位位置参数                               |
|      | shopt               | 设定和取消设定shell选项                    |
|      | source              | 在当前shell中执行一个文件中的命令          |
|      | suspend             | 挂起                                       |
|      | test                | 计算条件表达式                             |
|      | time                | 报告流水线执行消耗的时间                   |
|      | times               | 显示进程时间                               |
|      | trap                | 为信号和其他事件设置陷阱                   |
|      | type                | 显示关于命令类型的信息                     |
|      | ulimit              | 修改shell资源限制                          |
|      | umask               | 显示或设定文件模式掩码                     |
|      | variables           | 常用shell变量名称和用法                    |
|      | wait                | 等待任务完成并返回退出状态                 |

## alias 定义或显示别名

- **显示格式：`alias [-p]`**  
- **定义格式：`alias 名称=值`**

### 示例

| 常用 | 命令            | 解释               |
| ---- | --------------- | ------------------ |
| ■    | alias           | 显示别名           |
|      | alias -p        | 显示别名           |
| ■    | alias a='ls -l' | 定义ls -l的别名为a |

## unalias 删除别名

**格式：`unalias [-a] 名称 [名称 ...]`**

### 示例

| 常用 | 命令       | 解释         |
| ---- | ---------- | ------------ |
|      | unalias -a | 删除所有别名 |
| ■    | unalias a  | 删除别名a    |

## bg 将任务移至后台

**格式：`bg [任务说明符 ...]`**

### 示例

| 常用 | 命令 | 解释                   |
| ---- | ---- | ---------------------- |
| ■■   | vi&  | vi命令后台运行         |
| ■    | bg   | 查看上一个后台运行程序 |
| ■    | bg 1 | 将任务1移至后台        |

## fg 将任务移至前台

**格式：`fg [任务说明符 ...]`**

### 示例

| 常用 | 命令 | 解释                           |
| ---- | ---- | ------------------------------ |
| ■    | fg   | 将上一个后台程序切换到前台运行 |
| ■■   | fg 1 | 将任务1移至前台运行            |

## jobs 显示后台任务状态

- **格式1：`jobs [-lnprs] [任务说明符 ...]`**
- **格式2：`jobs -x 命令 [参数]`**

### 示例

| 常用 | 命令    | 解释             |
| ---- | ------- | ---------------- |
| ■    | jobs    | 显示后台任务状态 |
| ■■   | jobs -l | 显示进程ID       |
|      | jobs -n | 仅显示进程ID     |
|      | jobs -r | 显示运行中任务   |
|      | jobs -s | 显示已停止任务   |

## cd 切换目录

**格式：`cd [-L|[-P [-e]] [-@]] [目录]`**

### 示例

| 常用 | 命令 | 解释           |
| ---- | ---- | -------------- |
| ■■   | cd a | 切换到a目录    |
| ■    | cd ~ | 切换到用户目录 |
| ■■   | cd / | 切换到跟目录   |

## pwd 打印当前工作目录的名字

**格式：`pwd [-LP]`**

### 示例

| 常用 | 命令 | 解释                   |
| ---- | ---- | ---------------------- |
| ■    | pwd  | 打印当前工作目录的名字 |

## ls 列出 <文件>（默认为当前目录）的信息

**格式：`ls [选项]... [文件]...`**

### 选项

| 常用 | 短选项 | 长选项                                    | 解释                                           |
| ---- | ------ | ----------------------------------------- | ---------------------------------------------- |
| ■■   | -a     | --all                                     | 显示以.开头的项目                              |
|      | -A     | --almost-all                              | 不显示.和..项目                                |
| ■■   | -l     |                                           | 使用长列表格式                                 |
|      |        | --author                                  | 与-l同时使用，显示作者                         |
|      |        | --block-size=大小                         | 与-l同时使用，转换容量                         |
| ■    | -c     |                                           | 与-l同时使用，按照时间排序                     |
|      |        | --full-time                               | 等于-l --time-style=full-iso                   |
|      | -g     |                                           | 类似-l，但不列出所有者                         |
|      | -n     | --numeric-uid-gid                         | 类似-l，但列出用户和组的ID号                   |
|      | -o     |                                           | 类似-l，但不列出有关组的信息                   |
|      |        | --time-style=时间风格                     | 使用-l时显示的时间/日期格式                    |
|      | -b     | --escape                                  | 以C风格的转义序列表示不可打印的字符            |
|      | -q     | --hide-control-chars                      | 以?字符代替不可打印的字符                      |
|      |        | --show-control-chars                      | 原样显示无法打印的字符                         |
|      | -B     | --ignore-backups                          | 不显示以~结尾的项目                            |
|      | -C     |                                           | 纵向显示                                       |
|      | -x     |                                           | 横向显示                                       |
|      |        | --color=何时                              | 指定<何时>使用彩色输出                         |
|      | -d     | --directory                               | 显示目录，而不是内容                           |
| ■    | -R     | --recursive                               | 递归地列出子目录                               |
|      | -D     | --dired                                   | 产生适合Emacs的dired模式使用的输出             |
|      | -f     |                                           | 按照目录顺序列出各项目                         |
|      | -U     |                                           | 按照目录顺序列出各项目                         |
|      | -F     | --classify=何时                           | 指定<何时>在项目后追加指示符号(*/=@\|)         |
|      |        | --file-type                               | 类似，但不追加*字符                            |
|      |        | --format=关键字                           | across、horizontal同-x，commas同-m，           |
|      |        |                                           | long、single-column、verbose同-l，             |
|      |        |                                           | vertical同-C                                   |
|      |        | --group-directories-first                 | 将目录排在文件前面                             |
|      | -G     | --no-group                                | 使用长列表格式时，不输出组名                   |
|      | -h     | --human-readable                          | 同时使用-l或-s时，将大小表示为1K、234M、2G等   |
|      |        | --si                                      | 类似，但是使用1000的幂，而不是1024             |
|      | -H     | --dereference-command-line                | 跟随命令行中列出的符号链接                     |
|      |        | --dereference-command-line-symlink-to-dir | 跟随命令行中列出的、指向目录的符号链接         |
|      |        | --hide=模式                               | 隐藏符合shell<模式>的项目                      |
|      | -I     | --ignore=模式                             | 隐藏符合shell<模式>的项目                      |
|      |        | --hyperlink=何时                          | 指定<何时>使用超链接显示文件名                 |
|      |        | --indicator-style=关键字                  | 定在项目名称后追加的指示符号的风格             |
|      |        |                                           | none默认，slash同-p、                          |
|      |        |                                           | file-type同--file-type、classify同-F           |
|      | -i     | --inode                                   | 显示每个文件的索引编号(inode号)                |
|      | -k     | --kibibytes                               | 显示文件系统使用量时，默认使用1024字节的块大小 |
|      | -L     | --dereference                             | 当显示符号链接的文件信息时，显示符号链接指向   |
|      |        |                                           | 的文件的信息，而非符号链接本身的信息           |
|      | -m     |                                           | 所有项目以逗号分隔，并填满整行行宽             |
|      | -N     | --literal                                 | 输出不加引号的项目名称                         |
|      | -Q     | --quote-name                              | 在项目名称两侧加上双引号                       |
|      | -p     | --indicator-style=slash                   | 对目录追加/作为指示符号                        |
|      |        | --quoting-style=关键字                    | 使用指定的加引号方式显示项目名称：             |
|      |        |                                           | literal、locale、shell、shell-always、         |
|      |        |                                           | shell-escape、shell-escape-always、c、escape   |
|      | -r     | --reverse                                 | 排序时逆序排列                                 |
|      | -s     | --size                                    | 显示给每个文件分配的大小，单位为块             |
|      | -S     |                                           | 根据文件大小排序，最大的最前                   |
|      |        | --sort=关键字                             | 按照<关键字>而非名称进行排序：                 |
|      |        |                                           | none同-U、size同-S、time同-t、                 |
|      |        |                                           | version同-v、extension同-X、width              |
|      | -t     | --time=关键字                             | 选择用于显示或排序的时间戳：                   |
|      |        |                                           | 访问时间：atime、access、use同-u，             |
|      |        |                                           | 元数据变更时间：ctime、status同-c，            |
|      |        |                                           | 修改时间：mtime、modification默认,             |
|      |        |                                           | 创建时间：birth、creation                      |
|      | -T     | --tabsize=列数                            | 指定制表符宽度为<列数>，而非默认的8            |
|      | -u     |                                           | 显示访问时间并排序                             |
|      | -v     |                                           | 对文本中的数字或版本号进行自然排序             |
|      | -w     | --width=列数                              | 设置输出宽度为<列数>，0表示无限制              |
|      | -X     |                                           | 按照扩展名的字母顺序排序                       |
|      | -Z     | --context                                 | 输出每个文件的所有安全上下文信息               |
|      |        | --zero                                    | 以NUL字符而非换行结束每个输出行                |
|      | -1     |                                           | 每行只列出一个文件                             |
|      |        | --help                                    | 显示此帮助信息并退出                           |
|      |        | --version                                 | 显示版本信息并退出                             |

### 样式

#### 默认格式

```txt
ali@ali-PC:~/test$ ls
file  folder
```

仅显示未隐藏并且不是.开头的文件和文件夹

#### 长格式

```txt
ali@ali-PC:~/test$ ls -l
总计 8
-rw-rw-r-- 1 ali ali    5  1月  7 15:11 file
drwxrwxr-x 2 ali ali 4096  1月  7 15:07 folder
```

- 第1段，文件或文件夹类型和权限
- 第2段，文件或子目录的链接数量
- 第3段，权限所属用户
- 第4段，权限所属群组
- 第5段，文件所占byte
- 第6-8段，创建时间
- 第9段，文件或文件夹名

## mkdir 创建目录

**格式：`mkdir [选项]... 目录...`**

### 选项

| 常用 | 短选项 | 长选项           | 解释                                              |
| ---- | ------ | ---------------- | ------------------------------------------------- |
| ■■   | -m     | --mode=模式      | 设置文件chmod模式                                 |
| ■■   | -p     | --parents        | 创建多级目录                                      |
|      | -v     | --verbose        | 每次创建新目录时，打印一条消息                    |
|      | -Z     |                  | 将每个创建的目录的SELinux安全上下文设置为默认类型 |
|      |        | --context=上下文 | 类似-Z，指定<上下文>                              |

## rmdir 删除空目录

**格式：`rmdir [选项]... 目录...`**

### 选项

| 常用 | 短选项 | 长选项                     | 解释                             |
| ---- | ------ | -------------------------- | -------------------------------- |
|      |        | --ignore-fail-on-non-empty | 忽略所有删除非空目录时产生的错误 |
| ■■   | -p     | --parents                  | 删除多级目录                     |
|      | -v     | --verbose                  | 为每个处理的目录输出一条诊断信息 |
