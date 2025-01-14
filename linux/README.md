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

| 八进制 | 符号 | 权限       | 二进制 |
| ------ | ---- | ---------- | ------ |
| 7      | rwx  | 读\写\执行 | 111    |
| 6      | rw-  | 读\写      | 110    |
| 5      | r-x  | 读\执行    | 101    |
| 4      | r--  | 读         | 100    |
| 3      | -wx  | 写\执行    | 011    |
| 2      | -w-  | 写         | 010    |
| 1      | --x  | 执行       | 001    |
| 0      | ---  | 无         | 000    |

## 命令

| 常用 | 命令                | 作用                                       |
| ---- | ------------------- | ------------------------------------------ |
| ■    | alias               | 别名                                       |
| ■    | unalias             | 删除别名                                   |
| ■■   | bg / &              | 后台运行                                   |
| ■■   | fg                  | 前台运行                                   |
| ■■   | jobs                | 显示后台任务状态                           |
| ■■   | chmod               | 修改文件或文件夹权限                       |
| ■■   | cd                  | 切换目录                                   |
| ■    | pwd                 | 当前目录                                   |
| ■■   | ls                  | 目录内容                                   |
| ■■   | mkdir               | 创建目录                                   |
| ■■   | rmdir               | 删除空目录                                 |
| ■    | du                  | 统计目录内容容量                           |
| ■    | touch               | 创建文件                                   |
| ■■   | cp                  | 复制文件                                   |
| ■    | dd                  | 转换和复制文件                             |
| ■■   | scp                 | 远程复制文件                               |
| ■    | rsync               | 远程同步                                   |
| ■■   | sh                  | 执行程序                                   |
| ■■   | ssh                 | SSH                                        |
| ■    | ftp                 | FTP                                        |
| ■    | sftp                | SFTP                                       |
| ■■   | mv                  | 移动文件或目录                             |
| ■■   | rm                  | 删除文件                                   |
| ■    | file                | 探测文件类型                               |
| ■■   | grep                | 查找文件内容                               |
| ■■   | cat                 | 显示文件内容                               |
| ■    | tac                 | 按行倒序显示文件内容                       |
| ■    | more                | 分页显示文件内容                           |
| ■    | less                | 分页显示文件内容                           |
| ■    | head                | 显示文件头部内容                           |
| ■    | tail                | 显示文件尾部内容                           |
| ■    | curl                | 获取网络资源(需要安装)                     |
| ■    | wget                | 获取网络资源                               |
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

- **格式：`unalias [-a] 名称 [名称 ...]`**

### 示例

| 常用 | 命令       | 解释         |
| ---- | ---------- | ------------ |
|      | unalias -a | 删除所有别名 |
| ■    | unalias a  | 删除别名a    |

## bg 将任务移至后台

- **格式：`bg [任务说明符 ...]`**

### 示例

| 常用 | 命令 | 解释                   |
| ---- | ---- | ---------------------- |
| ■■   | vi&  | vi命令后台运行         |
| ■    | bg   | 查看上一个后台运行程序 |
| ■    | bg 1 | 将任务1移至后台        |

## fg 将任务移至前台

- **格式：`fg [任务说明符 ...]`**

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

## chmod 修改文件或文件夹权限

- **格式1：`chmod [选项]... 模式[,模式]... 文件...`**
- **格式2：`chmod [选项]... 八进制模式 文件...`**
- **格式3：`chmod [选项]... --reference=参考文件 文件...`**

### 选项

| 常用 | 短选项 | 长选项               | 解释                   |
| ---- | ------ | -------------------- | ---------------------- |
|      | -v     | --verbose            | 显示操作记录           |
|      | -c     | --changes            | 做出修改时显示操作记录 |
|      | -f     | --silent / --quiet   | 不显示大多数错误消息   |
|      |        | --no-preserve-root   | 不特殊对待/            |
|      |        | --preserve-root      | 不允许在/上递归操作    |
|      |        | --reference=参考文件 | 使用<参考文件>的模式   |
| ■■   | -R     | --recursive          | 递归修改文件和目录     |

### 模式 `[ugoa]*([-+=]([rwxXst]*|[ugo]))+|[-+=][0-7]+`

#### 用户类型 who

| 符号 | 用户类型 | 解释             |
| ---- | -------- | ---------------- |
| u    | user     | 文件所有者       |
| g    | group    | 文件所有者所在组 |
| o    | others   | 所有其他用户     |
| a    | all      | 所有用户         |

#### 操作符 operator

| 符号 | 解释     |
| ---- | -------- |
| +    | 加权限   |
| -    | 减权限   |
| =    | 赋值权限 |

#### 权限 permission

| 符号 | 权限            | 解释                                                                           |
| ---- | --------------- | ------------------------------------------------------------------------------ |
| r    | 读              | 可读权限                                                                       |
| w    | 写              | 可写权限                                                                       |
| x    | 执行            | 可执行权限                                                                     |
| X    | 特殊执行        | 只有当文件为目录文件，或者其他类型的用户有可执行权限时，才将文件权限设置可执行 |
| s    | setuid / setgid | 当文件被执行时，根据who参数指定的用户类型设置文件的setuid或者setgid权限        |
| t    | 粘贴位          | 设置粘贴位，只有超级用户可以设置该位，只有文件所有者u可以使用该位              |

### 八进制模式 / 符号模式

| 八进制 | 符号 | 权限       | 二进制 |
| ------ | ---- | ---------- | ------ |
| 7      | rwx  | 读\写\执行 | 111    |
| 6      | rw-  | 读\写      | 110    |
| 5      | r-x  | 读\执行    | 101    |
| 4      | r--  | 读         | 100    |
| 3      | -wx  | 写\执行    | 011    |
| 2      | -w-  | 写         | 010    |
| 1      | --x  | 执行       | 001    |
| 0      | ---  | 无         | 000    |

### 示例

| 常用 | 命令                | 解释                                  |
| ---- | ------------------- | ------------------------------------- |
| ■■   | chmod 777 file      | 修改file文件权限为777                 |
| ■■   | chmod u+x file      | 当前用户添加执行权限                  |
| ■■   | chmod a-w file      | 所有用户去除写权限                    |
| ■■   | chmod g=rx file     | 组用户为读和执行权限                  |
| ■■   | chmod -R 777 folder | 修改folder文件夹以及所有项目权限为777 |

## cd 切换目录

- **格式：`cd [-L|[-P [-e]] [-@]] [目录]`**

### 示例

| 常用 | 命令 | 解释           |
| ---- | ---- | -------------- |
| ■■   | cd a | 切换到a目录    |
| ■    | cd ~ | 切换到用户目录 |
| ■■   | cd / | 切换到跟目录   |

## pwd 打印当前工作目录的名字

- **格式：`pwd [-LP]`**

### 示例

| 常用 | 命令 | 解释                   |
| ---- | ---- | ---------------------- |
| ■    | pwd  | 打印当前工作目录的名字 |

## ls 列出 <文件>（默认为当前目录）的信息

- **格式：`ls [选项]... [文件]...`**

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
| ■    |        | --color=何时                              | 指定<何时>使用彩色输出                         |
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
| ■    | -h     | --human-readable                          | 同时使用-l或-s时，将大小表示为1K、234M、2G等   |
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

### 示例

| 常用 | 命令       | 解释                         |
| ---- | ---------- | ---------------------------- |
| ■■   | ls         | 列出当前目录信息             |
|      | ls file    | 列出file文件信息             |
|      | ls folder/ | 列出folder目录信息           |
| ■    | ls -a      | 显示以.开头的项目            |
| ■■   | ls -l      | 使用长列表格式               |
| ■    | ls -lc     | 使用长列表格式，按照时间排序 |
| ■    | ls -R      | 递归地列出子目录             |

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
- 第6-8段，修改时间
- 第9段，文件或文件夹名

## mkdir 创建目录

- **格式：`mkdir [选项]... 目录...`**

### 选项

| 常用 | 短选项 | 长选项           | 解释                                              |
| ---- | ------ | ---------------- | ------------------------------------------------- |
| ■■   | -m     | --mode=模式      | 设置文件chmod模式                                 |
| ■■   | -p     | --parents        | 创建多级目录                                      |
|      | -v     | --verbose        | 显示操作记录                                      |
|      | -Z     |                  | 将每个创建的目录的SELinux安全上下文设置为默认类型 |
|      |        | --context=上下文 | 类似-Z，指定<上下文>                              |

### 示例

| 常用 | 命令           | 解释                     |
| ---- | -------------- | ------------------------ |
| ■■   | mkdir a        | 创建目录a                |
| ■■   | mkdir -m777 a  | 创建目录a，并设置权限777 |
| ■■   | mkdir -p a/b/c | 创建多级目录a/b/c        |

## rmdir 删除空目录

- **格式：`rmdir [选项]... 目录...`**

### 选项

| 常用 | 短选项 | 长选项                     | 解释                             |
| ---- | ------ | -------------------------- | -------------------------------- |
|      |        | --ignore-fail-on-non-empty | 忽略所有删除非空目录时产生的错误 |
| ■■   | -p     | --parents                  | 删除多级目录                     |
|      | -v     | --verbose                  | 显示操作记录                     |

### 示例

| 常用 | 命令        | 解释              |
| ---- | ----------- | ----------------- |
| ■■   | rmdir a     | 删除目录a         |
| ■■   | rmdir a/b/c | 删除多级目录a/b/c |

## du 统计目录内容容量

- **格式1：`du [选项]... [文件]...`**
- **格式2：`du [选项]... --files0-from=F`**

### 选项

| 常用 | 短选项 | 长选项             | 解释                                                             |
| ---- | ------ | ------------------ | ---------------------------------------------------------------- |
|      | -0     | --null             | 使用NUL空字符而非换行符结束每个输出行                            |
| ■    | -a     | --all              | 输出所有文件的统计，而不仅仅是目录                               |
|      |        | --apparent-size    | 显示表面使用量，而不是设备使用量                                 |
|      | -B     | --block-size=大小  | 打印大小前将其除以<大小>                                         |
|      | -b     | --bytes            | 等价于--apparent-size --block-size=1                             |
|      | -c     | --total            | 显示总计信息                                                     |
|      | -D     | --dereference-args | 仅解引用在命令行中列出的符号链接                                 |
|      | -d     | --max-depth=N      | 指定目录深度                                                     |
|      |        | --files0-from=F    | 统计文件F中的以NUL空字符分隔的文件名所对应的各个文件的设备使用量 |
|      | -H     |                    | 等价于--dereference-args (-D)                                    |
| ■    | -h     | --human-readable   | 以可读性较好的格式输出大小                                       |
|      |        | --inodes           | 列出inode使用信息而非块使用信息                                  |
|      | -k     |                    | 等于--block-size=1K                                              |
|      | -L     | --dereference      | 解引用所有符号链接                                               |
|      | -l     | --count-links      | 如果是硬链接，则重复计算其大小                                   |
|      | -m     |                    | 等于--block-size=1M                                              |
|      | -p     | --no-dereference   | 不跟随任何符号链接                                               |
|      | -s     | --summarize        | 对每个命令行参数输出一个总使用量                                 |
|      | -t     | --threshold=大小   | 如果<大小>为正值，排除比该值更小的项，                           |
|      |        |                    | 如果<大小>为负值，排除比该值更大的项                             |
|      |        | --time             | 显示目录下的所有文件的修改时间中最晚的那个                       |
|      |        | --time=关键字      | 示 <关键字> 对应的时间，而非修改时间：                           |
|      |        |                    | atime、access、use、ctime、status                                |
|      |        | --time-style=风格  | 使用指定的<风格>显示时间，可能的取值有：                         |
|      |        |                    | full-iso、long-iso、iso、+格式                                   |
|      | -x     | --one-file-system  | 跳过位于不同文件系统上的目录                                     |

## touch 将每个<文件>的访问时间和修改时间更改为当前时间

- **格式：`touch [选项]... 文件...`**

### 选项

| 常用 | 短选项 | 长选项           | 解释                                 |
| ---- | ------ | ---------------- | ------------------------------------ |
| ■    | -a     |                  | 只更改访问时间                       |
| ■    | -m     |                  | 只更改修改时间                       |
| ■    | -c     | --no-create      | 不创建任何文件                       |
|      | -d     | --date=字符串    | 使用<字符串>表示的时间，而非当前时间 |
|      | -h     | --no-dereference | 影响符号链接本身，而非符号链接的目标 |
|      | -r     | --reference=文件 | 使用<文件>的时间戳，而非当前时间     |
|      |        | --time=关键字    | 修改指定类型的时间                   |

### 示例

| 常用 | 命令    | 解释                               |
| ---- | ------- | ---------------------------------- |
| ■■   | touch a | 如果文件a不存在，则创建空文件；    |
|      |         | 如果存在，则修改访问时间和修改时间 |

## cp 将<源>复制至<目标>，或将多个<源>复制至<目录>

- **格式1：`cp [选项]... [-T] 源 目标`**
- **格式2：`cp [选项]... 源... 目录`**
- **格式3：`cp [选项]... -t 目录 源...`**

### 选项

| 常用 | 短选项  | 长选项                   | 解释                                           |
| ---- | ------- | ------------------------ | ---------------------------------------------- |
|      | -a      | --archive                | 等于-dR --preserve=all                         |
|      |         | --attributes-only        | 仅复制属性而不复制文件数据                     |
|      |         | --backup=控制            | 为每个已存在的目标文件创建备份                 |
|      | -b      |                          | 类似--backup但不接受参数                       |
|      | -d      |                          | 等于--no-dereference --preserve=links          |
|      | -f      | --force                  | 如果已存在的目标文件无法打开，则将其删除并重试 |
| ■    | -i      | --interactive            | 覆盖前询问                                     |
|      | -H      |                          | 跟随命令行里的<源>中的符号链接                 |
|      | -l      | --link                   | 硬链接文件以代替复制                           |
|      | -L      | --dereference            | 总是跟随<源>里的符号链接                       |
|      | -P      | --no-dereference         | 从不跟随<源>里的符号链接                       |
| ■    | -n      | --no-clobber             | 不要覆盖现有文件，也不要失败                   |
|      | -p      |                          | 等于--preserve=mode,ownership,timestamps       |
|      |         | --preserve=属性列表      | 保留指定的文件属性                             |
|      |         | --no-preserve=属性列表   | 不保留指定的属性                               |
|      |         | --parents                | 在<目录>下使用完整的源文件路径                 |
| ■■   | -R / -r | --recursive              | 递归地复制目录                                 |
|      |         | --reflink=何时           | 控制克隆/CoW副本                               |
|      |         | --remove-destination     | 尝试打开目标文件前先删除已存在的目标           |
|      |         | --sparse=何时            | 控制创建稀疏文件的方式                         |
|      |         | --strip-trailing-slashes | 删除参数中所有<源>末尾的斜杠                   |
|      | -s      | --symbolic-link          | 只创建符号链接而不复制文件                     |
|      | -S      | --suffix=后缀            | 自行指定备份文件的后缀                         |
|      | -t      | --target-directory=目录  | 将所有<源>参数复制到<目录>                     |
|      | -T      | --no-target-directory    | 将<目标>视为普通文件                           |
|      |         | --update=更新            | 控制更新哪些已存在的文件                       |
|      | -u      |                          | 等价于--update=older                           |
|      | -v      | --verbose                | 显示操作记录                                   |
|      | -x      | --one-file-system        | 仅在此文件系统上进行操作                       |
|      | -Z      |                          | 设置目标文件的SELinux安全上下文为默认类型      |
|      |         | --context=上下文         | 类似-Z，指定<上下文>                           |

### 示例

| 常用 | 命令                 | 解释                              |
| ---- | -------------------- | --------------------------------- |
| ■■   | cp file file1        | 复制file文件为file1文件           |
| ■■   | cp file file1 folder | 复制file和file1文件到folder文件夹 |
| ■■   | cp -r folder folder1 | 复制folder文件夹为folder1文件夹   |

## dd 转换和复制文件

- **格式：`dd [操作数] ...`**

### 操作数

| 常用 | 操作数           | 解释                                                |
| ---- | ---------------- | --------------------------------------------------- |
| ■■   | bs=字节数        | 一次读取和写入的字节数(默认512)，会覆盖ibs和obs的值 |
|      | ibs=字节数       | 一次读取的字节数(默认512)                           |
|      | obs=字节数       | 一次写入的字节数(默认512)                           |
|      | cbs=字节数       | 一次转换的字节数                                    |
| ■■   | if=文件          | 从<文件>而非标准输入读取                            |
| ■■   | of=文件          | 写入到<文件>而非标准输出                            |
| ■    | conv=转换        | 按照以逗号分隔的符号列表指定的方式转换文件          |
|      | iflag=标志       | 按照以逗号分隔的符号列表指定的方式读取              |
|      | oflag=标志       | 按照以逗号分隔的符号列表指定的方式写入              |
| ■■   | count=N          | 只复制N个输入块                                     |
|      | seek=N / oseek=N | 跳过N个大小为obs的输出块                            |
|      | skip=N / iseek=N | 跳过N个大小为ibs的输入块                            |
|      | status=等级      | 要输出到标准错误的信息<等级>：                      |
|      |                  | one将仅输出错误信息                                 |
|      |                  | noxfer将不输出最终的传输统计信息                    |
|      |                  | progress将周期性显示传输统计信息                    |

### 转换

| 常用 | 转换      | 解释                                                    |
| ---- | --------- | ------------------------------------------------------- |
|      | ascii     | 由EBCDIC码转换至ASCII码                                 |
|      | ebcdic    | 由ASCII码转换至EBCDIC码                                 |
|      | ibm       | 由ASCII码转换至代用的EBCDIC码                           |
|      | block     | 以换行符结尾的记录末尾填充空格，直至cbs大小             |
|      | unblock   | 将cbs大小的记录中的末尾空格替换为一个换行符             |
| ■    | lcase     | 将大写字符转换为小写                                    |
| ■    | ucase     | 将小写字符转换为大写                                    |
|      | sparse    | 尝试寻址(seek)而非写入全为NUL空字符的输出块             |
|      | swab      | 交换每一对输入字节                                      |
|      | sync      | 将每个输入块以NUL空字符填充至ibs大小，                  |
|      |           | 当配合block或unblock使用时，会以空格代替NUL空字符来填充 |
|      | excl      | 如果输出文件已存在，则操作失败                          |
|      | nocreat   | 不要创建输出文件                                        |
|      | notrunc   | 不要截断输出文件                                        |
|      | noerror   | 发生读取错误后仍然继续                                  |
|      | fdatasync | 结束前将输出文件数据从物理上写入磁盘                    |
|      | fsync     | 与上一个类似，但也将元数据一同写入                      |

### 标志

| 常用 | 标志      | 解释                                         |
| ---- | --------- | -------------------------------------------- |
| ■    | append    | 追加模式(仅对输出有意义；隐含了conv=notrunc) |
|      | direct    | 使用直接I/O存取数据                          |
|      | dsync     | 使用同步I/O存取数据                          |
|      | nonblock  | 用无阻塞I/O                                  |
|      | directory | 除非是目录，否则操作失败                     |
|      | sync      | 与上一个类似，但同时也对元数据生效           |
|      | fullblock | 累积完整的输入块(仅限iflag)                  |
|      | noatime   | 不更新访问时间                               |
|      | nocache   | 请求不使用缓存；也请参见oflag=sync           |
|      | noctty    | 不根据文件指派控制终端                       |
|      | nofollow  | 不跟随符号链接                               |

### 示例

| 常用 | 命令                                                              | 解释               |
| ---- | ----------------------------------------------------------------- | ------------------ |
| ■■   | dd if=2k.txt of=1.txt                                             | 复制文件           |
| ■    | dd if=/dev/zero of=2k.txt bs=1K count=2                           | 创建2K的空文件     |
|      | dd if=/dev/urandom of=random.txt bs=1K count=1                    | 创建1K的随机数文件 |
| ■    | dd if=l.txt of=u.txt conv=ucase                                   | 转为大写字符       |
| ■    | ssh ali@192.168.30.127 dd if=/home/ali/test/2k.txt \| dd of=1.txt | 从远端复制到本地   |
| ■    | dd if=2k.txt \| ssh ali@192.168.30.127 dd of=/home/ali/test/1.txt | 从本地复制到远端   |

## scp 远程复制

- **格式：`scp [-346ABCOpqRrsTv] [-c cipher] [-D sftp_server_path] [-F ssh_config] [-i identity_file] [-J destination] [-l limit] [-o ssh_option]`**

### 选项

| 常用 | 选项                | 解释                                          |
| ---- | ------------------- | --------------------------------------------- |
|      | -3                  | 远程复制(默认)                                |
|      | -4                  | 仅使用IPv4                                    |
|      | -6                  | 仅使用IPv6                                    |
|      | -A                  | 身份验证代理转发                              |
|      | -B                  | 选择批处理模式                                |
|      | -C                  | 启用压缩                                      |
|      | -c cipher           | 选择用于加密数据传输的密码                    |
|      | -D sftp_server_path | 通过ssh直接连接到本地SFTP服务器程序           |
|      | -F ssh_config       | 为ssh指定一个备选的每个用户配置文件           |
|      | -i identity_file    | 选择私钥文件                                  |
|      | -J destination      | 跳转主机TCP转发                               |
|      | -l limit            | 限制使用的带宽                                |
|      | -O                  | 使用传统的SCP协议进行文件传输，而不是SFTP协议 |
|      | -o ssh_option       | ssh选项                                       |
|      | -P port             | 指定远程主机上要连接的端口                    |
|      | -p                  | 保留源文件中的修改时间、访问时间和文件模式    |
|      | -q                  | 禁用进度计以及来自ssh的警告和诊断消息         |
|      | -R                  | 从远程主机执行                                |
| ■■   | -r                  | 递归复制整个目录                              |
|      | -S program          | 用于加密连接的程序名称                        |
|      | -T                  | 禁用严格的文件名检查                          |
|      | -v                  | 显示操作记录                                  |
|      | -X sftp_option      | SFTP选项                                      |

### 示例

| 常用 | 命令                                               | 解释                   |
| ---- | -------------------------------------------------- | ---------------------- |
| ■■   | scp ali@192.168.30.127:/home/ali/test/2k.txt 1.txt | 从远端复制到本地       |
| ■■   | scp -r ali@192.168.30.127:/home/ali/test/folder f1 | 从远端复制到本地(目录) |
| ■■   | scp 2k.txt ali@192.168.30.127:/home/ali/test/1.txt | 从本地复制到远端       |
| ■■   | scp -r folder ali@192.168.30.127:/home/ali/test/f1 | 从本地复制到远端(目录) |

## ssh SSH

- **格式1：`ssh [-46AaCfGgKkMNnqsTtVvXxYy] [-B bind_interface] [-b bind_address] [-c cipher_spec] [-D [bind_address:]port] [-E log_file] [-e escape_char] [-F configfile] [-I pkcs11] [-i identity_file] [-J destination] [-L address] [-l login_name] [-m mac_spec] [-O ctl_cmd] [-o option] [-P tag] [-p port] [-R address] [-S ctl_path] [-W host:port] [-w local_tun[:remote_tun]] destination [command [argument ...]]`**
- **格式2：`ssh [-Q query_option]`**

### 选项

| 常用 | 选项                                 | 解释                                          |
| ---- | ------------------------------------ | --------------------------------------------- |
|      | -4                                   | 仅使用IPv4                                    |
|      | -6                                   | 仅使用IPv6                                    |
|      | -A                                   | 身份验证代理转发                              |
|      | -a                                   | 禁用身份验证代理转发                          |
|      | -B bind_interface                    | 绑定地址                                      |
|      | -C                                   | 启用压缩                                      |
|      | -c cipher_spec                       | 选择加密会话的密码规范                        |
|      | -D [bind_address:]port               | 指定端口                                      |
|      | -E log_file                          | 调试日志                                      |
|      | -e escape_char                       | 设置转义字符(默认~)                           |
|      | -F configfile                        | 指定每个用户的备选配置文件                    |
|      | -f                                   | 请求ssh在命令执行之前转到后台                 |
|      | -G                                   | 使ssh在评估Host和Match块并退出后打印其配置    |
|      | -g                                   | 允许远程主机连接到本地转发端口                |
|      | -I pkcs11                            | 指定ssh应用于与PKCS#11令牌通信的PKCS#11共享库 |
|      | -i identity_file                     | 选择私钥文件                                  |
|      | -J destination                       | 跳转主机TCP转发                               |
|      | -K                                   | 启用基于GSSAPI的身份验证                      |
|      | -k                                   | 禁用将GSSAPI凭据转发                          |
|      | -L [bind_address:]port:host:hostport |                                               |
|      | -L [bind_address:]port:remote_socket |                                               |
|      | -L local_socket:host:hostport        |                                               |
|      | -L local_socket:remote_socket        | 本地TCP或Unix端口转发到服务器                 |
|      | -l login_name                        | 指定以远程计算机上的身份登录的用户            |
|      | -M                                   | 将ssh客户端置于主模式以进行连接共享。         |
|      | -m mac_spec                          | 以逗号分隔的MAC算法列表                       |
|      | -N                                   | 不要执行远程命令                              |
|      | -n                                   | 阻止从stdin读取                               |
|      | -O ctl_cmd                           | 控制活动连接多路复用主进程                    |
|      | -o option                            | 可用于以配置文件中使用的格式提供选项          |
|      | -P tag                               | 选择配置的标记名称                            |
|      | -p port                              | 端口号                                        |
|      | -Q                                   | 算法                                          |
|      | -q                                   | 安静模式                                      |
|      | -R [bind_address:]port:host:hostport |                                               |
|      | -R [bind_address:]port:local_socket  |                                               |
|      | -R remote_socket:host:hostport       |                                               |
|      | -R remote_socket:local_socket        |                                               |
|      | -R [bind_address:]port               | 服务器TCP或Unix端口转发到本地                 |
|      | -S ctl_path                          | 指定用于连接共享的控制套接字的位置            |
|      | -s                                   | 可用于请求调用远程系统上的子系统              |
|      | -T                                   | 禁用伪终端分配                                |
|      | -t                                   | 强制伪终端分配                                |
|      | -V                                   | 显示版本号并退出                              |
|      | -v                                   | 显示操作记录                                  |
|      | -W host:port                         | 本地标准输入和输出转发到服务器                |
|      | -w local_tun[:remote_tun]            | 隧道设备转发                                  |
|      | -X                                   | 启用X11转发                                   |
|      | -x                                   | 禁用X11转发                                   |
|      | -Y                                   | 启用受信任的X11转发                           |
|      | -y                                   | 使用syslog系统模块发送日志信息                |

### 示例

| 常用 | 命令                                                 | 解释                |
| ---- | ---------------------------------------------------- | ------------------- |
| ■■   | ssh ali@192.168.30.127                               | SSH                 |
| ■    | ssh -o HostKeyAlgorithms=+ssh-rsa ali@192.168.30.127 | 使用不安全的RSA算法 |

## mv 将<源>重命名为<目标>，或将<源>移动至<目录>

- **格式1：`mv [选项]... [-T] 源 目标`**
- **格式2：`mv [选项]... 源... 目录`**
- **格式3：`mv [选项]... -t 目录 源...`**

### 选项

| 常用 | 短选项 | 长选项                   | 解释                                        |
| ---- | ------ | ------------------------ | ------------------------------------------- |
|      |        | --backup=[控制]          | 为每个已存在的目标文件创建备份              |
|      | -b     |                          | 类似--backup，但不接受任何参数              |
|      |        | --debug                  | 解释文件是如何复制的                        |
| ■    | -f     | --force                  | 覆盖前不询问                                |
| ■    | -i     | --interactive            | 覆盖前询问                                  |
| ■    | -n     | --no-clobber             | 不覆盖已存在的文件                          |
|      |        | --no-copy                | 如果重命名失败，则不复制                    |
|      | -S     | --suffix=后缀            | 替换通常使用的备份文件后缀                  |
|      |        | --strip-trailing-slashes | 去掉每个<源>尾部的斜杠                      |
|      | -t     | --target-directory=目录  | 将所有<源>参数复制到<目录>                  |
|      | -T     | --no-target-directory    | 将<目标>视为普通文件                        |
|      |        | --update[=更新]          | 控制更新哪些已存在的文件：                  |
|      |        |                          | all、none、older(默认)                      |
|      | -u     |                          | 等价于--update[=older]                      |
|      | -v     | --verbose                | 显示操作记录                                |
|      | -Z     | --context                | 将目标文件的SELinux安全上下文设置为默认类型 |

### 示例

| 常用 | 命令              | 解释                                      |
| ---- | ----------------- | ----------------------------------------- |
| ■■   | mv file file1     | 将文件file重命名为file1(存在将覆盖)       |
| ■■   | mv file folder    | 将文件file移动到文件夹folder              |
| ■■   | mv folder folder1 | 将文件夹folder重命名为folder1             |
| ■■   | mv folder folder1 | 将文件夹foldere移动到folder1(folder1存在) |

## rm 删除一个或多个<文件>

- **格式：`rm [选项]... [文件]...`**

### 选项

| 常用 | 短选项  | 长选项                | 解释                                            |
| ---- | ------- | --------------------- | ----------------------------------------------- |
| ■■   | -f      | --force               | 忽略不存在的文件和参数，且从不询问              |
|      | -i      |                       | 每次删除前询问                                  |
|      | -I      |                       | 在删除超过三个文件或者递归删除前询问一次        |
|      |         | --interactive[=何时]  | 根据<何时>的值进行询问                          |
|      |         | --one-file-system     | 递归删除目录时，跳过所有和该目录所对应的        |
|      |         |                       | 命令行参数不在同一个文件系统上的目录            |
|      |         | --no-preserve-root    | 不要对/特殊处理                                 |
|      |         | --preserve-root[=all] | 不要删除/(默认)                                 |
|      |         |                       | all拒绝处理与其父目录位于不同设备上的命令行参数 |
| ■■   | -r / -R | --recursive           | 递归删除目录及其内容                            |
| ■■   | -d      | --dir                 | 删除空目录                                      |
|      | -v      | --verbose             | 显示操作记录                                    |

### 示例

| 常用 | 命令         | 解释             |
| ---- | ------------ | ---------------- |
| ■■   | rm file      | 删除文件file     |
| ■■   | rm -r folder | 删除文件夹folder |

## file 探测文件类型

- **格式：`file [OPTION...] [FILE...]`**

### 选项

| 常用 | 短选项 | 长选项                | 解释                                           |
| ---- | ------ | --------------------- | ---------------------------------------------- |
|      | -m     | --magic-file LIST     | 指定魔术文件列表                               |
|      | -z     | --uncompress          | 解压文件                                       |
|      | -Z     | --uncompress-noreport | 仅打印压缩文件的内容                           |
|      | -b     | --brief               | 不要在输出行前添加文件名                       |
|      | -c     | --checking-printout   | 打印魔术文件的解析形式                         |
|      | -e     | --exclude TEST        | 排除测试                                       |
|      |        | --exclude-quiet TEST  | 类似，但忽略未知测试                           |
|      | -f     | -files-from FILE      | 从FILE读取要检查的文件名                       |
|      | -F     | --separator STRING    | 使用STRING作为分隔符，而不是:                  |
|      | -i     | --mime                | 输出MIME字符串(--mime-type 和 --mime-encoding) |
|      |        | --apple               | 输出Apple CREATOR/TYPE                         |
|      |        | --extension           | 输出以斜线分隔的扩展名列表                     |
|      |        | --mime-type           | 输出MIME类型                                   |
|      |        | --mime-encoding       | 输出MIME编码                                   |
|      | -k     | --keep-going          | 匹配多个                                       |
|      | -l     | --list                | 列出魔术力度                                   |
|      | -L     | --dereference         | 遵循符号链接                                   |
|      | -h     | --no-dereference      | 不遵循符号链接                                 |
|      | -n     | --no-buffer           | 不使用缓冲输出                                 |
|      | -N     | --no-pad              | 不使用填充输出                                 |
|      | -0     | --print0              | 用ASCII NUL终止文件名                          |
|      | -p     | --preserve-date       | 保留文件的访问时间                             |
|      | -P     | --parameter           | 设置文件引擎参数限制                           |
|      | -r     | --raw                 | 不要将无法打印的字符转换为\ooo                 |
|      | -s     | --special-files       | 将特殊(块/字符设备)文件视为普通文件            |
|      | -S     | --no-sandbox          | 禁用系统调用沙盒                               |
|      | -C     | --compile             | 由-m指定的编译文件                             |
|      | -d     | --debug               | 打印调试信息                                   |

### 示例

| 常用 | 命令      | 解释         |
| ---- | --------- | ------------ |
| ■■   | file file | 探测文件file |

## grep 查找文件内容

- **格式：`grep [选项]... 模式 [文件]...`**

### 模式选择

| 常用 | 短选项 | 长选项            | 解释                        |
| ---- | ------ | ----------------- | --------------------------- |
|      | -E     | --extended-regexp | <模式>是扩展正则表达式      |
| ■    | -F     | --fixed-strings   | <模式>是字符串              |
|      | -G     | --basic-regexp    | <模式>是基本正则表达式      |
|      | -P     | --perl-regexp     | <模式>是Perl正则表达式      |
|      | -e     | --regexp=模式     | 使用指定的<模式>进行匹配    |
|      | -f     | --file=文件       | 从指定的<文件>中获得<模式>  |
| ■■   | -i     | --ignore-case     | 对于模式和数据，忽略大小写  |
|      |        | --no-ignore-case  | 不要忽略大小写(默认)        |
| ■    | -w     | --word-regexp     | 仅匹配整个单词              |
| ■    | -x     | --line-regexp     | 仅匹配整行                  |
|      | -z     | --null-data       | 数据行以NUL结束，而非换行符 |

### 杂项

| 常用 | 短选项 | 长选项         | 解释           |
| ---- | ------ | -------------- | -------------- |
|      | -s     | --no-messages  | 不显示错误信息 |
| ■■   | -v     | --invert-match | 选中不匹配的行 |

### 输出控制

| 常用 | 短选项 | 长选项                | 解释                                     |
| ---- | ------ | --------------------- | ---------------------------------------- |
|      | -m     | --max-count=数值      | 选中<数值>行后停止执行                   |
|      | -b     | --byte-offset         | 输出的同时打印字节偏移量                 |
| ■■   | -n     | --line-number         | 输出的同时打印行号                       |
|      |        | --line-buffered       | 每行输出后排空输出缓冲区                 |
|      | -H     | --with-filename       | 输出的同时打印文件名                     |
|      | -h     | --no-filename         | 输出时不显示文件名前缀                   |
|      |        | --label=标签          | 使用指定<标签>作为标准输入文件名前缀     |
|      | -q     | --quiet / --silent    | 不显示所有常规输出                       |
|      |        | --binary-files=类型   | 假定二进制文件是<类型>：                 |
|      |        |                       | binary、text、without-match              |
|      | -a     | --text                | 等价于--binary-files=text                |
|      | -I     |                       | 等价于--binary-files=without-match       |
|      | -d     | --directories=动作    | 处理目录的方式：                         |
|      |        |                       | read、recurse、skip                      |
|      | -D     | --devices=动作        | 处理设备、FIFO 和套接字的方式：          |
|      |        |                       | read、skip                               |
|      | -r     | --recursive           | 等价于--directories=recurse              |
|      |        | --include=GLOB        | 只查找匹配GLOB(含通配符的文件模式)的文件 |
|      |        | --exclude=GLOB        | 跳过匹配GLOB的文件                       |
|      |        | --exclude-from=文件   | 跳过匹配<文件>内容中任一文件模式的文件   |
|      |        | --exclude-dir=GLOB    | 跳过匹配GLOB的目录                       |
|      | -L     | --files-without-match | 只打印没有被选中的行的<文件>的名称       |
|      | -l     | --files-with-matches  | 只打印有被选中的行的<文件>的名称         |
| ■■   | -c     | --count               | 只打印每个<文件>的被选中的行的数量       |
|      | -T     | --initial-tab         | 使制表符对齐                             |
|      | -Z     | --null                | 在<文件>名后打印NUL                      |

### 文件控制

| 常用 | 短选项 | 长选项                   | 解释                                   |
| ---- | ------ | ------------------------ | -------------------------------------- |
| ■    | -B     | --before-context=数值    | 打印前面<数值>行上下文                 |
| ■    | -A     | --after-context=数值     | 打印后面<数值>行上下文                 |
|      | -C     | --context=数值           | 打印前后<数值>行上下文                 |
| ■■   | -数值  |                          | 等价于--context=数值                   |
|      |        | --group-separator=分隔符 | 在带有上下文的匹配块之间打印<分隔符>   |
|      |        | --no-group-separator     | 不要在带有上下文的匹配块之间打印分隔符 |
|      |        | --color[=何时]           | 使用标记高亮匹配的字符串：             |
|      |        |                          | always、never、auto                    |
|      | -U     | --binary                 | 不要清除行尾的CR字符(MSDOS/Windows)    |

### 示例

| 常用 | 命令               | 解释                  |
| ---- | ------------------ | --------------------- |
| ■■   | grep abc file      | abc字符串             |
| ■■   | grep 'abc de' file | abc de字符串          |
| ■■   | grep ^abc file     | abc开头的字符串       |
| ■■   | grep -F ^abc file  | ^abc字符串            |
| ■■   | grep -i abc file   | 不区分大小写abc字符串 |
| ■■   | grep -w abc file   | abc单词               |
| ■    | grep -x abc file   | abc行                 |
| ■    | grep -v abc file   | 不含abc字符串         |
| ■■   | grep -n abc file   | 打印行号              |
| ■    | grep -c abc file   | 记录行数              |
| ■■   | grep -1n abc file  | 打印行号和上下一行    |
