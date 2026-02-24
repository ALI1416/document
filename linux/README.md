# linux

## 目录

| 名称        | 解释                    |
| ----------- | ----------------------- |
| /bin        | 常用命令(/usr/bin)      |
| /sbin       | root用户命令(/usr/sbin) |
| /boot       | 系统文件                |
| /root       | root用户目录            |
| /dev        | 外部设备                |
| /etc        | 系统配置                |
| /home       | 用户目录                |
| /lib        | 库文件目录(/usr/lib)    |
| /lost+found | 故障期间保存的文件      |
| /media      | 自动挂载目录            |
| /mnt        | 手动挂载目录            |
| /opt        | 大型软件安装目录        |
| /proc       | 内存映射                |
| /sys        | 内核映射                |
| /srv        | 服务数据                |
| /tmp        | 临时文件                |
| /run        | 临时文件                |
| /usr        | 共享目录                |
| /usr/share  | 共享数据                |
| /usr/local  | 软件安装目录            |
| /var        | 可变文件                |
| /var/log    | 日志文件                |
| /var/tmp    | 临时文件                |

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

| 常用 | 命令                | 解释                                       |
| ---- | ------------------- | ------------------------------------------ |
| ■    | alias               | 别名                                       |
| ■    | unalias             | 删除别名                                   |
| ■■   | bg / & / nohup      | 后台运行                                   |
| ■■   | fg                  | 前台运行                                   |
| ■■   | jobs                | 显示后台任务状态                           |
| ■■   | sleep               | 睡眠                                       |
| ■    | users               | 所有用户                                   |
| ■■   | useradd             | 新增用户                                   |
| ■■   | userdel             | 删除用户                                   |
| ■■   | usermod             | 修改用户                                   |
| ■■   | passwd              | 更改用户密码                               |
| ■■   | chmod               | 修改文件或文件夹权限                       |
| ■■   | chown               | 修改文件或文件夹所有者                     |
| ■■   | id                  | 显示用户的用户和组信息                     |
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
| ■■   | sh / bash / dash    | 执行程序                                   |
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
| ■    | head                | 显示文件头部内容                           |
| ■■   | tail                | 显示文件尾部内容                           |
| ■■   | echo                | 打印                                       |
| ■    | history             | 命令历史列表                               |
| ■■   | apt                 | 在线软件管理                               |
| ■■   | dpkg                | 离线软件管理                               |
| ■■   | ps                  | 进程列表                                   |
| ■■   | kill                | 杀死进程                                   |
| ■■   | systemctl           | 控制进程                                   |
| ■■   | tar                 | tar打包和解包                              |
| ■■   | gzip                | gz压缩和解压                               |
| ■■   | zip / unzip         | zip压缩和解压                              |
| ■■   | less                | less文档查看器                             |
| ■■   | vi                  | vi文档编辑器                               |
| ■■   | nano                | nano文档编辑器                             |
| ■    | curl                | 获取网络资源                               |
| ■    | wget                | 获取网络资源                               |
| ■    | top                 | 查看CPU占用                                |
| ■    | free                | 查看内存占用                               |
| ■    | iftop               | 查看网络占用                               |
| ■    | df                  | 查看磁盘占用                               |
| ■    | w                   | 所有登录用户信息                           |
| ■    | who                 | 所有登录用户信息                           |
| ■    | whoami              | 登录用户                                   |
| ■    | which               | 命令位置                                   |
| ■    | type                | 显示关于命令类型的信息                     |
|      | bind                | 设定Readline键绑定和变量                   |
|      | builtin             | 执行shell内建                              |
|      | caller              | 回当前子例程调用的上下文                   |
|      | command             | 执行一个简单命令或者显示命令的相关信息     |
|      | compgen             | 依据选项显示可能的补全                     |
|      | complete            | 指定Readline如何补全参数                   |
|      | compopt             | 修改或显示补全选项                         |
|      | coproc              | 创建副进程                                 |
|      | declare / typeset   | 设定变量的值和属性                         |
|      | local               | 定义局部变量                               |
|      | set                 | 定义变量                                   |
|      | unset               | 取消定义变量                               |
|      | readonly            | 只读变量                                   |
|      | disown              | 当前shell中删除任务                        |
|      | enable              | 启用和禁用shell内建                        |
|      | eval                | 执行命令                                   |
|      | exec                | 使用指定命令替换shell                      |
|      | export              | 为shell变量设定导出属性                    |
|      | fc                  | 从历史列表中显示或者执行命令               |
|      | getopts             | 解析选项参数                               |
|      | hash                | 记住或显示程序位置                         |
|      | let                 | 对算术表达式进行求值                       |
| ■    | help                | 帮助                                       |
| ■    | exit                | 退出                                       |
| ■    | logout              | 注销                                       |
|      | mapfile / readarray | 从标准输入读取行到索引数组变量中           |
|      | dirs                | 显示目录栈                                 |
|      | pushd               | 将目录添加到栈中                           |
|      | popd                | 从栈中删除目录                             |
| ■■   | read                | 从标准输入读取一行，并将其分割为不同的字段 |
| ■■   | printf              | 格式化并打印                               |
| ■■   | test                | 计算条件表达式                             |
|      | shift               | 移位位置参数                               |
|      | shopt               | 设定和取消设定shell选项                    |
|      | source              | 在当前shell中执行一个文件中的命令          |
|      | suspend             | 挂起                                       |
|      | time                | 报告流水线执行消耗的时间                   |
|      | times               | 显示进程时间                               |
|      | trap                | 为信号和其他事件设置陷阱                   |
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

### 注意

- 在重启后失效，如果要永久生效，需要修改`~/.bashrc`文件
- 任意地方添加
- 执行`source ~/.bashrc`立即生效

- 查看所有进程：`alias pa='ps aux'`，执行`pa`
- 查看所有进程并查找：`alias pg='pa | grep '`，查找java`pg java`
- 查看服务状态：`alias sa='systemctl status '`，查看nginx状态`sa nginx`
- 启动服务：`alias st='systemctl start '`，启动nginx`st nginx`
- 停止服务：`alias sp='systemctl stop '`，停止nginx`sp nginx`
- 重启服务：`alias sr='systemctl restart '`，重启nginx`sr nginx`
- 重新加载服务：`alias sl='systemctl reload '`，重新加载nginx`sl nginx`
- 更新Systemd的配置：`alias sd='systemctl daemon-reload'`，执行`sd`

```sh
alias pa='ps aux'
alias pg='pa | grep '
alias sa='systemctl status '
alias st='systemctl start '
alias sp='systemctl stop '
alias sr='systemctl restart '
alias sl='systemctl reload '
alias sd='systemctl daemon-reload'
```

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

| 常用 | 命令    | 解释                   |
| ---- | ------- | ---------------------- |
| ■■   | vi&     | vi命令后台运行         |
| ■    | bg      | 查看上一个后台运行程序 |
| ■    | bg %1   | 将任务1移至后台        |
| ■    | kill %1 | 杀死任务1              |

### 后台运行

- 使用`&`(终端关闭后被杀死)
  - `sleep 10 &`
- 使用`Ctrl+Z`和`bg`(终端关闭后被杀死)
  1. `sleep 10`
  2. `Ctrl+Z`(暂停任务)
  3. `bg`(后台运行)
- 使用`nohup`和`&`
  - `nohup sleep 10 &`

- `nohup echo 123 &`：执行命令`echo 123`并在后台运行，标准输出写入到`nohup.out`，无错误信息
- `nohup echo 123 >info.log &`：执行命令`echo 123`并在后台运行，标准输出写入到`info.log`，无错误信息
- `nohup echo 123 >info.log 2>error.log &`：执行命令`echo 123`并在后台运行，标准输出写入到`info.log`，错误信息写入到`error.log`
- `nohup echo 123 >info.log 2>&1 &`：执行命令`echo 123`并在后台运行，标准输出和错误信息写入到`info.log`
- `nohup echo 123 >/dev/null 2>error.log &`：执行命令`echo 123`并在后台运行，无标准输出，错误信息写入到`error.log`
- `nohup echo 123 >/dev/null 2>&1 &`：执行命令`echo 123`并在后台运行，无标准输出和错误信息
- `cat /dev/null >nohup.out`：清空`nohup.out`
- `cp /dev/null >nohup.out`：清空`nohup.out`

## fg 将任务移至前台

- **格式：`fg [任务说明符 ...]`**

### 示例

| 常用 | 命令  | 解释                           |
| ---- | ----- | ------------------------------ |
| ■    | fg    | 将上一个后台程序切换到前台运行 |
| ■■   | fg %1 | 将任务1移至前台运行            |

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

## sleep 睡眠

- **格式1：`sleep 选项`**
- **格式2：`sleep 数字[后缀]...`**

### 后缀

| 常用 | 后缀 | 解释 |
| ---- | ---- | ---- |
| ■■   | s    | 秒   |
| ■■   | m    | 分钟 |
| ■■   | h    | 小时 |
| ■■   | d    | 天   |

### 示例

| 常用 | 命令         | 解释          |
| ---- | ------------ | ------------- |
| ■■   | sleep 10     | 睡眠10秒      |
| ■■   | sleep 1m     | 睡眠1分钟     |
| ■■   | sleep 1m 10s | 睡眠1分钟10秒 |

## useradd 新增用户

- **格式1：`useradd [选项] 登录名`**
- **格式2：`useradd -D`**
- **格式3：`useradd -D [选项]`**

### 选项

| 常用 | 短选项 | 长选项                   | 解释                                         |
| ---- | ------ | ------------------------ | -------------------------------------------- |
|      |        | --badname                | 允许不符合标准的名称                         |
|      | -b     | --base-dir BASE_DIR      | 新账户的主目录的基目录                       |
|      |        | --btrfs-subvolume-home   | 使用BTRFS子卷作为主目录                      |
|      | -c     | --comment COMMENT        | 新账户的备注                                 |
| ■■   | -d     | --home-dir HOME_DIR      | 新账户的主目录                               |
|      | -D     | --defaults               | 显示或更改默认的useradd配置                  |
|      | -e     | --expiredate EXPIRE_DATE | 新账户的过期日期                             |
|      | -f     | --inactive INACTIVE      | 新账户的密码不活动期                         |
|      | -F     | --add-subids-for-system  | 即使在添加系统用户时，也要向子[ud]id添加条目 |
|      | -g     | --gid GROUP              | 新账户主组的名称或ID                         |
|      | -G     | --groups GROUPS          | 新账户的附加组列表                           |
|      | -k     | --skel SKEL_DIR          | 使用此目录作为骨架目录                       |
|      | -K     | --key KEY=VALUE          | 不使用/etc/login.defs中的默认值              |
|      | -l     | --no-log-init            | 不要将此用户添加到最近登录和登录失败数据库   |
| ■■   | -m     | --create-home            | 创建用户的主目录                             |
| ■■   | -M     | --no-create-home         | 不创建用户的主目录                           |
|      | -N     | --no-user-group          | 不创建同名的组                               |
|      | -o     | --non-unique             | 允许使用重复的UID创建用户                    |
| ■    | -p     | --password PASSWORD      | 加密后的新账户密码                           |
| ■■   | -r     | --system                 | 创建一个系统账户                             |
|      | -R     | --root CHROOT_DIR        | chroot到的目录                               |
|      | -P     | --prefix PREFIX_DIR      | /etc/*文件所在的前缀目录                     |
| ■■   | -s     | --shell SHELL            | 新账户的登录shell                            |
|      | -u     | --uid UID                | 新账户的用户ID                               |
|      | -U     | --user-group             | 创建与用户同名的组                           |
|      | -Z     | --selinux-user SEUSER    | 为SELinux用户映射使用指SEUSER                |
|      |        | --extrausers             | 使用额外用户数据库                           |

### 示例

| 常用 | 命令                                      | 解释                              |
| ---- | ----------------------------------------- | --------------------------------- |
| ■■   | useradd -m newuser                        | 创建一个普通用户并自动创建主目录  |
| ■■   | useradd -m -d /home/nu -s /bin/nu newuser | 创建一个指定主目录和 shell 的用户 |
| ■    | useradd -c "New User" -m newuser          | 创建一个带注释的用户              |
| ■    | useradd -r -m systemuser                  | 创建一个系统用户                  |

## userdel 删除用户

- **格式：`userdel [选项] 登录名`**

### 选项

| 常用 | 短选项 | 长选项              | 解释                            |
| ---- | ------ | ------------------- | ------------------------------- |
| ■■   | -f     | --force             | 强制删除                        |
| ■■   | -r     | --remove            | 删除主目录和信件池              |
|      | -R     | --root CHROOT_DIR   | chroot到的目录                  |
|      | -P     | --prefix PREFIX_DIR | /etc/*文件所在的前缀目录        |
|      | -Z     | --selinux-user      | 为用户删除所有的SELinux用户映射 |
|      |        | --extrausers        | 使用额外用户数据库              |

### 示例

| 常用 | 命令                | 解释               |
| ---- | ------------------- | ------------------ |
| ■■   | userdel -rf newuser | 强制删除用户和目录 |

## usermod 修改用户

- **格式：`usermod [选项] 登录名`**

### 选项

| 常用 | 短选项 | 长选项                   | 解释                                                         |
| ---- | ------ | ------------------------ | ------------------------------------------------------------ |
|      | -a     | --append GROUP           | 将用户追加至上边-G中提到的附加组中，并不从其它组中删除此用户 |
|      | -r     | --remove                 | 仅从-G选项提到的补充组中删除用户，而不从其他组中删除该用户   |
|      | -q     | --badname                | 允许不符合标准的名称                                         |
| ■    | -c     | --comment COMMENT        | 新的备注                                                     |
| ■■   | -d     | --home HOME_DIR          | 用户的新主目录                                               |
| ■■   | -m     | --move-home              | 将家目录内容移至新位置(仅于-d一起使用)                       |
|      | -e     | --expiredate EXPIRE_DATE | 设定帐户过期的日期为EXPIRE_DATE                              |
|      | -f     | --inactive INACTIVE      | 过期INACTIVE天数后，设定密码为失效状态                       |
|      | -g     | --gid GROUP              | 强制使用GROUP为新主组                                        |
|      | -G     | --groups GROUPS          | 新的附加组列表GROUPS                                         |
| ■■   | -l     | --login NEW_LOGIN        | 新的登录名称                                                 |
|      | -u     | --uid UID                | 用户帐号的新UID                                              |
| ■■   | -s     | --shell SHELL            | 该用户帐号的新登录shell                                      |
|      | -Z     | --selinux-user SEUSER    | 用户的新的SELinux用户映射                                    |
| ■■   | -L     | --lock                   | 锁定用户帐号                                                 |
| ■■   | -U     | --unlock                 | 解锁用户帐号                                                 |
|      | -o     | --non-unique             | 允许使用重复的(非唯一的)UID                                  |
|      | -p     | --password PASSWORD      | 将加密过的密码(PASSWORD)设为新密码                           |
|      | -P     | --prefix PREFIX_DIR      | /etc/*文件所在的前缀目录                                     |
|      | -R     | --root CHROOT_DIR        | chroot到的目录                                               |
|      | -v     | --add-subuids FIRST-LAST | 添加子UID范围                                                |
|      | -V     | --del-subuids FIRST-LAST | 移除子UID范围                                                |
|      | -w     | --add-subgids FIRST-LAST | 添加子GID范围                                                |
|      | -W     | --del-subgids FIRST-LAST | 移除子GID范围                                                |

### 示例

| 常用 | 命令               | 解释     |
| ---- | ------------------ | -------- |
| ■■   | usermod -L newuser | 锁定用户 |
| ■■   | usermod -U newuser | 解锁用户 |

## passwd 更改用户密码

- **格式：`passwd [选项] [登录名]`**

### 选项

| 常用 | 短选项 | 长选项                  | 解释                                           |
| ---- | ------ | ----------------------- | ---------------------------------------------- |
| ■■   | -a     | --all                   | 报告所有帐户的密码状态                         |
| ■■   | -S     | --status                | 报告指定帐户密码的状态                         |
| ■■   | -d     | --delete                | 删除指定帐户的密码                             |
| ■■   | -e     | --expire                | 强制使指定帐户的密码过期                       |
|      | -k     | --keep-tokens           | 仅在过期后修改密码                             |
|      | -i     | --inactive INACTIVE     | 密码过期后设置密码不活动为INACTIVE             |
| ■■   | -l     | --lock                  | 锁定指定的帐户                                 |
| ■■   | -u     | --unlock                | 解锁被指定帐户                                 |
|      | -r     | --repository REPOSITORY | 在REPOSITORY库中改变密码                       |
|      | -R     | --root CHROOT_DIR       | chroot到的目录                                 |
|      | -w     | --warndays WARN_DAYS    | 设置过期警告天数为WARN_DAYS                    |
|      | -n     | --mindays MIN_DAYS      | 设置到下次修改密码所须等待的最短天数为MIN_DAYS |
|      | -x     | --maxdays MAX_DAYS      | 设置到下次修改密码所须等待的最多天数为MAX_DAYS |
|      | -q     | --quiet                 | 安静模式                                       |

### 示例

| 常用 | 命令              | 解释             |
| ---- | ----------------- | ---------------- |
| ■■   | passwd -S newuser | 查看用户密码状态 |

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

## chown 修改文件或文件夹所有者

- **格式1：`chown [选项]... [所有者][:[组]] 文件...`**
- **格式2：`chown [选项]... --reference=参考文件 文件...`**

### 选项

| 常用 | 短选项 | 长选项                   | 解释                                                                             |
| ---- | ------ | ------------------------ | -------------------------------------------------------------------------------- |
|      | -c     | --changes                | 类似verbose选项，但仅在做出修改时进行报告                                        |
|      | -f     | --silent/ --quiet        | 不显示大多数错误消息                                                             |
|      | -v     | --verbose                | 为每个处理的文件输出一条诊断信息                                                 |
|      |        | --dereference            | 影响每个符号链接指向的文件(默认) ，而非符号链接本身                              |
|      | -h     | --no-dereference         | 影响符号链接，而非其指向的文件(仅当系统支持更改符号链接的所有权时，该选项才有用) |
|      |        | --from=当前所有者:当前组 | 仅在文件的当前所有者和/或组和这里指定的一致时，才更改所有者和/或组               |
|      |        |                          | 其中一个可以省略，表示不对被省略的属性作出要求                                   |
|      |        | --no-preserve-root       | 不特殊对待/(默认)                                                                |
|      |        | --preserve-root          | 不允许在/上递归操作                                                              |
|      |        | --reference=参考文件     | 使用<参考文件>的所有者和组，而非指定<所有者>:<组>                                |
|      |        |                          | 如果<参考文件>是符号链接，则总是解引用它                                         |
| ■■   | -R     | --recursive              | 递归操作文件和目录                                                               |

### 示例

| 常用 | 命令            | 解释                        |
| ---- | --------------- | --------------------------- |
| ■■   | chown -R a:b c/ | 递归修改c文件夹的所有者和组 |
| ■■   | chown -R a c/   | 给a用户添加权限             |

## id 显示用户的用户和组信息

- **格式1：`id [选项]... [用户]...`**

### 选项

| 常用 | 短选项 | 长选项    | 解释                                                    |
| ---- | ------ | --------- | ------------------------------------------------------- |
|      | -u     | --user    | 仅打印有效用户ID                                        |
|      | -g     | --group   | 仅打印有效组ID                                          |
|      | -G     | --groups  | 仅打印所有的组ID                                        |
|      | -n     | --name    | 打印名称而非数字，与-ugG一起使用                        |
|      | -r     | --real    | 打印真实ID而非有效ID，与-ugG一起使用                    |
|      | -z     | --zero    | 使用NUL字符而非空格来分隔各个条目，在默认格式下不可使用 |
|      | -Z     | --context | 仅打印当前进程的安全上下文                              |

### 示例

| 常用 | 命令   | 解释              |
| ---- | ------ | ----------------- |
| ■■   | id ali | 显示ali用户的信息 |

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

| 常用 | 命令              | 解释                     |
| ---- | ----------------- | ------------------------ |
| ■■   | mkdir a           | 创建目录a                |
| ■■   | mkdir -m777 a     | 创建目录a，并设置权限777 |
| ■■   | mkdir -p a/b/c    | 创建多级目录a/b/c        |
| ■■   | mkdir -p /a/{b,c} | 创建目录/a/b和/a/c       |

## rmdir 删除空目录

- **格式：`rmdir [选项]... 目录...`**

### 选项

| 常用 | 短选项 | 长选项                     | 解释                             |
| ---- | ------ | -------------------------- | -------------------------------- |
|      |        | --ignore-fail-on-non-empty | 忽略所有删除非空目录时产生的错误 |
| ■■   | -p     | --parents                  | 删除多级目录                     |
|      | -v     | --verbose                  | 显示操作记录                     |

### 示例

| 常用 | 命令           | 解释              |
| ---- | -------------- | ----------------- |
| ■■   | rmdir a        | 删除目录a         |
| ■■   | rmdir -p a/b/c | 删除多级目录a/b/c |

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

| 常用 | 命令           | 解释                               |
| ---- | -------------- | ---------------------------------- |
| ■■   | touch a        | 如果文件a不存在，则创建空文件；    |
|      |                | 如果存在，则修改访问时间和修改时间 |
| ■    | touch /a/{b,c} | 创建文件/a/b和/a/c                 |

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
| ■■   | ssh -o Port=6000 ali@192.168.30.127                  | 使用端口6000        |
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

## cat 显示文件内容

- **格式：`cat [选项]... [文件]...`**

### 选项

| 常用 | 短选项 | 长选项             | 解释                              |
| ---- | ------ | ------------------ | --------------------------------- |
| ■■   | -n     | --number           | 对输出的所有行编号                |
|      | -b     | --number-nonblank  | 对非空输出行编号，使-n失效        |
|      | -s     | --squeeze-blank    | 不重复输出空行                    |
|      | -v     | --show-nonprinting | 使用^和M-表示法，LFD和TAB字符除外 |
|      | -E     | --show-ends        | 在每行行末显示$                   |
|      | -T     | --show-tabs        | 将TAB显示为^I                     |
|      | -e     |                    | 等价于-vE                         |
|      | -t     |                    | 等价于-vT                         |
|      | -A     | --show-all         | 等价于-vET                        |

## tac 按行倒序显示文件内容

- **格式：`tac [选项]... [文件]...`**

### 选项

| 常用 | 短选项 | 长选项             | 解释                             |
| ---- | ------ | ------------------ | -------------------------------- |
|      | -b     | --before           | 在行首而非行尾添加分隔符         |
|      | -r     | --regex            | 将分隔符视为正则表达式进行解释   |
|      | -s     | --separator=字符串 | 用<字符串>而非换行符作为行分隔符 |

## more 分页显示文件内容

- **格式：`more [选项] <文件>...`**

### 选项

| 常用 | 短选项   | 长选项        | 解释                       |
| ---- | -------- | ------------- | -------------------------- |
|      | -d       | --silent      | 显示帮助而不是响铃         |
|      | -f       | --logical     | 计算逻辑行而不是屏幕行     |
|      | -l       | --no-pause    | 抑制表单提要后的暂停       |
|      | -c       | --print-over  | 不滚动、显示文本和清理行尾 |
|      | -p       | --clean-print | 不滚动、清理屏幕和显示文本 |
|      | -e       | --exit-on-eof | 文件结束时退出             |
|      | -s       | --squeeze     | 将多个空白行压缩成一行     |
|      | -u       | --plain       | 取消下划线和粗体           |
|      | -n       | --lines<数字> | 每屏的行数                 |
|      | -<数字>  |               | 类似--lines                |
|      | +<数字>  |               | 从行号开始显示文件         |
|      | +/<数字> |               | 从模式匹配开始显示文件     |

## head 显示文件头部内容

- **格式：`head [选项]... [文件]...`**

### 选项

| 常用 | 短选项 | 长选项            | 解释                              |
| ---- | ------ | ----------------- | --------------------------------- |
|      | -c     | --bytes=[-]数字   | 前<数字>字节内容                  |
|      |        |                   | 带-号，除了后<数字>字节内容       |
| ■    | -b     | --lines=[-]数字   | 前<数字>行内容而非前10行内容      |
|      |        |                   | 带-号，除了后<数字>行内容         |
|      | -q     | -quiet / --silent | 不打印文件名作为头部              |
|      | -v     | --verbose         | 总是打印文件名作为头部            |
|      | -z     | --zero-terminated | 以NUL空字符而非换行符作为行分隔符 |

## tail 显示文件尾部内容

- **格式：`head [选项]... [文件]...`**

### 选项

| 常用 | 短选项 | 长选项                        | 解释                                                        |
| ---- | ------ | ----------------------------- | ----------------------------------------------------------- |
|      | -c     | --bytes=[+]数字               | 后<数字>字节内容                                            |
|      |        |                               | 带+号，第<数字>字节后内容                                   |
| ■    | -n     | --lines=[+]数字               | 后<数字>行内容                                              |
|      |        |                               | 带+号，第<数字>行后内容                                     |
|      | -q     | -quiet / --silent             | 不打印文件名作为头部                                        |
|      | -v     | --verbose                     | 总是打印文件名作为头部                                      |
|      | -z     | --zero-terminated             | 以NUL空字符而非换行符作为行分隔符                           |
| ■■   | -f     | --follow[={name\|descriptor}] | 随文件增长即时输出新增数据(默认descriptor)                  |
|      |        | --retry                       | 即使目标文件无法访问，仍然不断尝试打开                      |
|      | -F     |                               | 同--follow=name --retry                                     |
|      |        | --max-unchanged-stats=N       | 和--follow=name同时使用时, 如果一个<文件>在N次(默认5)迭代后 |
|      |        |                               | 没有改变大小，则重新打开它，以确认它是否已被删除或重命名    |
|      | -s     | --sleep-interval=N            | 和-f同时使用时，在两次迭代之间睡眠约N秒(默认1)              |
|      |        | --pid=PID                     | 和-f同时使用时，在进程号为PID的进程结束后终止执行           |

## echo 打印

- **格式：`echo [-neE] [参数 ...]`**

### 选项

| 常用 | 选项 | 解释                 |
| ---- | ---- | -------------------- |
| ■    | -n   | 不换行               |
| ■    | -e   | 转义(默认)(bash支持) |
| ■    | -E   | 不转义(bash支持)     |

### 转义字符

| 常用 | 字符       | 解释                |
| ---- | ---------- | ------------------- |
|      | \a         | 响铃                |
|      | \b         | 退格                |
|      | \c         | 阻止后续的输出      |
|      | \e         | 转义字符            |
|      | \E         | 转义字符            |
|      | \f         | 换页                |
| ■    | \n         | 换行                |
| ■    | \r         | 回车                |
| ■    | \t         | 水平制表符          |
|      | \v         | 垂直制表符          |
|      | \\\\       | 反斜杠              |
|      | \0nnn      | 八进制ASCII字符     |
|      | \xHH       | 十六进制字符        |
|      | \uHHHH     | 十六进制Unicode字符 |
|      | \UHHHHHHHH | 十六进制Unicode字符 |

## history 命令历史列表

- **格式：`history [-c] [-d 偏移量] [n]`**
- **格式：`history -anrw [文件名]`**
- **格式：`history -ps 参数 [参数...]`**

### 选项

| 常用 | 选项      | 解释                                                       |
| ---- | --------- | ---------------------------------------------------------- |
| ■    | -c        | 删除所有条目从而清空历史列表                               |
|      | -d 偏移量 | 删除位于<偏移量>的历史条目                                 |
|      |           | 负的<偏移量>表示从历史列表末尾开始倒数                     |
|      | -a        | 将当前会话的历史追加到历史文件中                           |
|      | -n        | 从历史文件中读取所有未被读取的行，并且将它们追加到历史列表 |
|      | -r        | 读取历史文件并将内容追加到历史列表中                       |
|      | -w        | 将当前历史写入到历史文件中                                 |
|      | -p        | 对每一个<参数>执行历史展开并显示结果，而不存储到历史列表中 |
|      | -s        | 将<参数>作为单一条目追加到历史列表中                       |

## apt 命令行软件包管理器

- **格式：`apt [选项] 命令`**

### 选项

| 常用 | 选项            | 解释                             |
| ---- | --------------- | -------------------------------- |
| ■■   | list            | 根据名称列出软件包               |
| ■■   | search          | 搜索软件包描述                   |
| ■    | show            | 显示软件包细节                   |
| ■■   | update          | 更新可用软件包列表               |
| ■■   | upgrade         | 通过`安装/升级`软件来更新系统    |
| ■■   | install         | 安装软件包                       |
| ■    | reinstall       | 重新安装软件包                   |
| ■■   | remove          | 移除软件包                       |
| ■■   | autoremove      | 自动卸载所有不再使用的软件包     |
| ■■   | purge           | 卸载并清除软件包的配置           |
|      | dist-upgrade    | 发行版升级                       |
|      | dselect-upgrade | 根据dselect的选择来进行升级      |
|      | build-dep       | 为源码包配置所需的编译依赖关系   |
|      | satisfy         | 使系统满足依赖关系字符串         |
| ■    | clean           | 删除所有已下载的包文件           |
| ■    | autoclean       | 删除已下载的旧包文件             |
|      | check           | 核对以确认系统的依赖关系的完整性 |
|      | source          | 下载源码包文件                   |
|      | download        | 下载指定的二进制包到当前目录     |
|      | changelog       | 下载指定软件包，并显示其变更日志 |
|      | full-upgrade    | 通过`卸载/安装/升级`来更新系统   |
|      | edit-sources    | 编辑软件源信息文件               |

### 示例

| 常用 | 命令                | 解释                    |
| ---- | ------------------- | ----------------------- |
| ■■   | apt list zip        | 查看软件包zip           |
| ■■   | apt search 7zip-rar | 搜索软件包7zip-rar      |
| ■    | apt show zip        | 查看软件包zip细节       |
| ■■   | apt install zip     | 安装软件包zip           |
| ■    | apt reinstall zip   | 重新安装软件包zip       |
| ■■   | apt remove zip      | 移除软件包zip           |
| ■■   | apt purge zip       | 移除软件包zip并清除配置 |
| ■■   | apt update          | 更新可用软件包列表      |
| ■■   | apt upgrade         | 更新软件包              |

## ps 进程列表

- **格式：`ps [选项]`**

### 选项

| 常用 | 选项                            | 解释                                  |
| ---- | ------------------------------- | ------------------------------------- |
| ■■   | a                               | 所有进程(解除BSD风格的只有你自己限制) |
|      | -A / -e                         | 所有进程                              |
|      | -a                              | 同一终端下的所有进程                  |
|      | -d                              | 排除同一终端下的所有进程              |
|      | -N / --deselect                 | 反向选择                              |
|      | g                               | 真的是所有人，甚至是会议负责人        |
|      | T                               | 选择与此终端关联的所有进程            |
|      | r                               | 当前终端的进程                        |
| ■■   | x                               | 所有进程(解除BSD风格的必须有tty限制)  |
|      | -C<命令>                        | 列出指定命令的状况                    |
|      | -G<组列表> / --Group            | 按真实组ID(RGID)或名称选择            |
|      | -g<组列表> / --group            | 按有效组ID(EGID)或名称选择            |
|      | -<PGID>                         | 按进程组ID选择                        |
|      | <PID> / p<PID列表> / -p / --pid | 按进程ID选择                          |
|      | q<PID列表> / -q / --quick-pid   | 按进程ID选择(快速模式)                |
|      | --ppid<PID列表>                 | 按父进程ID选择                        |
|      | +<SID> / -s<会话列表> / --sid   | 按会话ID选择                          |
|      | t<tty列表> / -t / --tty         | 按tty选择                             |
|      | -U<用户列表> / -U / --User      | 按真实用户ID(RUID)或名称选择          |
|      | u<用户列表> / -u / --user       | 按有效用户ID(EUID)或名称选择          |

### 输出选项

| 常用 | 选项                    | 解释                         |
| ---- | ----------------------- | ---------------------------- |
|      | --context               | 显示SELinux安全上下文格式    |
|      | -f / Z                  | 进行完整格式列表             |
|      | -F                      | 拓展完整格式                 |
|      | o<格式> / -o / --format | 用户定义的格式               |
|      | j                       | BSD作业控制格式              |
|      | -j                      | 作业格式                     |
|      | l                       | 显示BSD长格式                |
|      | -l                      | 长格式                       |
|      | -c                      | 显示-l选项的不同调度程序信息 |
|      | -M                      | 添加一列安全数据             |
|      | O<格式> / -O            | BSD风格用户定义的格式        |
|      | -P                      | 添加一列显示psr              |
|      | s                       | 显示信号格式                 |
| ■■   | u                       | 显示面向用户的格式           |
|      | v                       | 显示虚拟内存格式             |
|      | X                       | 注册格式                     |
|      | -y                      | 与-l使用不要展示旗帜         |

### 输出修改选项

| 常用 | 选项                               | 解释                                 |
| ---- | ---------------------------------- | ------------------------------------ |
|      | c                                  | 显示真实的命令名称                   |
|      | --cols<数值> / --columns / --width | 设置屏幕宽度                         |
|      | --lines<数值> / --rows             | 设置屏幕高度                         |
|      | --cumulative                       | 包括一些死的子进程数据(与父进程相加) |
|      | -D<格式> / --date-format           | 将第一部分字段的日期格式设置为格式化 |
|      | e                                  | 显示环境变量                         |
|      | f                                  | ASCII进程层次结构                    |
|      | --forest                           | ASCII进程树形结构                    |
|      | -H                                 | 显示进程层次                         |
|      | h                                  | 无标题                               |
|      | --no-headers / --no-heading        | 不打印标题行                         |
|      | --headers                          | 重复标题行，每页输出一行             |
|      | k<排序> / --sort                   | 指定排序顺序                         |
|      | O                                  | 指定排序顺序                         |
|      | n                                  | WCHAN和USER的数字输出                |
|      | S                                  | 总结一些信息                         |
|      | --signames                         | 使用缩写信号名称显示信号掩码并展开列 |
|      | w / -w                             | 增加宽度，两次可获得无限宽度         |

### 线程显示选项

| 常用 | 选项   | 解释                          |
| ---- | ------ | ----------------------------- |
|      | H      | 线程就像进程一样              |
|      | m / -m | 显示进程后的线程              |
|      | -L     | 显示线程，可能带有LWP和NLWP列 |
|      | -T     | 显示线程，可能带有SPID列      |

### 其他选项

| 常用 | 选项   | 解释               |
| ---- | ------ | ------------------ |
|      | --info | 打印调试信息       |
|      | L      | 列出所有格式说明符 |
|      | V      | 打印procps-ng版本  |

### 示例

| 常用 | 命令                | 解释                        |
| ---- | ------------------- | --------------------------- |
| ■■   | ps aux              | BSD格式展示系统中的每个进程 |
| ■■   | ps aux \| grep java | 查找java进程                |

### ps aux BSD格式展示系统中的每个进程

```txt
ali@ali-PC:~$ ps aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.1  23424 14048 ?        Ss   10:23   0:01 /sbin/init splash
root           2  0.0  0.0      0     0 ?        S    10:23   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    10:23   0:00 [pool_workqueue_release]
root           4  0.0  0.0      0     0 ?        I<   10:23   0:00 [kworker/R-rcu_g]
ali         2798  0.0  0.2 279220 21140 ?        Sl   10:51   0:00 /snap/snapd-desktop-integration/253/usr/bin/snapd-desktop-integration
root        2803  0.0  0.0      0     0 ?        I    10:51   0:00 [kworker/u257:1-events_unbound]
ali         2827  0.0  0.0  22324  4608 pts/0    R+   10:59   0:00 ps aux
```

- `USER`：进程所有者的用户名
- `PID`：进程ID
- `%CPU`：CPU使用率
- `%MEM`：内存使用率
- `VSZ`：占用虚拟内存KB
- `RSS`：占用物理内存KB
- `TTY`：控制终端
- `STAT`：进程状态标志
- `START`：执行时间。24小时以内HH:MM(时:分)，否则Mmm:SS(三位数的月份:秒)
- `TIME`：累计CPU时间MMM:SS(分:秒)
- `COMMAND`：完整命令

### STAT 进程状态标志

| 标志 | 解释                             |
| ---- | -------------------------------- |
| D    | 不可中断休眠(IO)                 |
| I    | 空闲内核线程                     |
| R    | 正在运行或可运行(在运行队列)     |
| S    | 可中断休眠(等一个时间来完成)     |
| T    | 因作业控制信号而停止             |
| t    | 在跟踪期间被调试器停止           |
| W    | 分页                             |
| X    | 已杀死                           |
| Z    | 僵尸进程                         |
| <    | 高优先级                         |
| N    | 低优先级                         |
| L    | 内存有被锁定的页(实时和自定义IO) |
| s    | 会话领导                         |
| l    | 多线程                           |
| +    | 在前台进程组里                   |

## kill 杀死进程

- **格式：`kill [-s 信号说明符 | -n 信号编号 | -信号说明符] pid | 任务说明符 ...`**
- **格式：`kill -l [信号说明符]`**

### 选项

| 常用 | 选项    | 解释             |
| ---- | ------- | ---------------- |
|      | -s 信号 | <信号>是信号名称 |
|      | -n 信号 | <信号>是信号编号 |
|      | -l / -L | 列出所有信号名称 |

### 信号

| 常用 | 编号  | 信号      | 名称   | 解释                                                     |
| ---- | ----- | --------- | ------ | -------------------------------------------------------- |
|      | 0     |           | EXIT   |                                                          |
|      | 1     | SIGHUP    | HUP    | 挂起                                                     |
|      | 2     | SIGINT    | INT    | 中断(Ctrl+C)                                             |
|      | 3     | SIGQUIT   | QUIT   | 退出                                                     |
|      | 4     | SIGILL    | ILL    | 非法指令(进程执行了非法的机器指令)                       |
|      | 5     | SIGTRAP   | TRAP   | 跟踪陷阱(用于调试)                                       |
|      | 6     | SIGABRT   | ABRT   | 中止(进程自己发送并反馈已经崩溃)                         |
|      | 7     | SIGBUS    | BUS    | 总线错误(进程访问了无效的内存地址)                       |
|      | 8     | SIGFPE    | FPE    | 浮点异常(程执行了无效的浮点操作)                         |
| ■■   | 9     | SIGKILL   | KILL   | 强制终止(强制终止进程)                                   |
|      | 10    | SIGUSR1   | USR1   | 用户自定义信号1                                          |
|      | 11    | SIGSEGV   | SEGV   | 段错误(进程访问了无效的内存地址)                         |
|      | 12    | SIGUSR2   | USR2   | 用户自定义信号2                                          |
|      | 13    | SIGPIPE   | PIPE   | 管道破裂(进程向已关闭的管道写入数据)                     |
|      | 14    | SIGALRM   | ALRM   | 定时器(用于定时器和闹钟功能)                             |
|      | 15    | SIGTERM   | TERM   | 终止(请求进程正常退出)                                   |
|      | 16    | SIGSTKFLT | STKFLT | 协处理器栈错误(协处理器栈溢出)                           |
|      | 17    | SIGCHLD   | CHLD   | 子进程状态改变(子进程终止时发送给父进程)                 |
|      | 18    | SIGCONT   | CONT   | 继续(恢复被暂停的进程)                                   |
|      | 19    | SIGSTOP   | STOP   | 停止(无法被忽略或捕获，用于暂停进程)                     |
|      | 20    | SIGTSTP   | TSTP   | 终端停止(由用户按下Ctrl+Z键发送给进程)                   |
|      | 21    | SIGTTIN   | TTIN   | 后台进程读取终端(后台进程尝试从控制终端读取输入时发送)   |
|      | 22    | SIGTTOU   | TTOU   | 后台进程写入终端(后台进程尝试向控制终端写入输出时发送)   |
|      | 23    | SIGURG    | URG    | 紧急条件(进程收到了带外数据)                             |
|      | 24    | SIGXCPU   | XCPU   | CPU时间限制(进程超过了分配给它的CPU时间限制)             |
|      | 25    | SIGXFSZ   | XFSZ   | 文件大小限制(进程试图创建或修改的文件超过了文件大小限制) |
|      | 26    | SIGVTALRM | VTALRM | 虚拟定时器(虚拟定时器和闹钟功能)                         |
|      | 27    | SIGPROF   | PROF   | 性能分析器(性能分析器和跟踪工具)                         |
|      | 28    | SIGWINCH  | WINCH  | 窗口大小改变(终端窗口大小发生变化时发送给进程)           |
|      | 29    | SIGIO     | IO     | 输入/输出(异步I/O操作)                                   |
|      | 30    | SIGPWR    | PWR    | 电源故障(系统电源出现故障)                               |
|      | 31    | SIGSYS    | SYS    | 无效系统调用(进程尝试执行无效的系统调用)                 |
|      | 32    | 无        |        |                                                          |
|      | 33    | 无        |        |                                                          |
|      | 34    | SIGRTMIN  | RTMIN  | 实时信号最小值                                           |
|      | 35-63 |           |        | SIGRTMIN+1到SIGRTMIN+15、SIGRTMAX-14到SIGRTMAX-1         |
|      | 64    | SIGRTMAX  | RTMAX  | 实时信号最大值                                           |

### 示例

| 常用 | 命令          | 解释          |
| ---- | ------------- | ------------- |
| ■    | kill 12345    | 杀死进程12345 |
| ■■   | kill -9 12345 | 强制杀死12345 |

## systemctl 查询或向系统管理员发送控制命令

- **格式：`systemctl [OPTIONS...] COMMAND ...`**

### 单位命令

| 常用 | 命令                                | 解释                                                               |
| ---- | ----------------------------------- | ------------------------------------------------------------------ |
|      | list-units [PATTERN...]             | 列出当前内存中的单位                                               |
|      | list-automounts [PATTERN...]        | 按路径顺序列出当前内存中的自动装载单元                             |
|      | list-paths [PATTERN...]             | 按路径顺序列出当前内存中的路径单元                                 |
|      | list-sockets [PATTERN...]           | 按地址顺序列出当前内存中的套接字单元                               |
|      | list-timers [PATTERN...]            | 按下一次时间顺序列出当前内存中的计时器单位                         |
|      | is-active PATTERN...                | 检查装置是否处于活动状态                                           |
|      | is-failed [PATTERN...]              | 检查单元是否出现故障或系统是否处于降级状态                         |
|      | show [PATTERN...\|JOB...]           | 显示一个或多个单位/作业或经理的属性                                |
| ■■   | status [PATTERN...\|PID...]         | 显示一个或多个单元的运行时状态                                     |
| ■■   | cat PATTERN...                      | 显示指定单位的文件和插件                                           |
|      | help PATTERN...\|PID...             | 显示一个或多个单元的手册                                           |
|      | list-dependencies [UNIT...]         | 递归显示单位所需或想要的单位，或这些单位所需的单位                 |
| ■■   | start UNIT...                       | 启动(激活)一个或多个装置                                           |
| ■■   | stop UNIT...                        | 停止(停用)一个或多个装置                                           |
| ■■   | reload UNIT...                      | 重新加载一个或多个单元                                             |
| ■■   | restart UNIT...                     | 启动或重新启动一个或多个装置                                       |
| ■■   | kill UNIT...                        | 向单元的进程发送信号                                               |
|      | try-restart UNIT...                 | 如果处于活动状态，请重新启动一个或多个单元                         |
|      | reload-or-restart UNIT...           | 如果可能，重新加载一个或多个单元，否则启动或重新启动               |
|      | try-reload-or-restart UNIT...       | 如果处于活动状态，请重新加载一个或多个单元(如果支持)，否则重新启动 |
|      | isolate UNIT                        | 启动一个单元并停止所有其他单元                                     |
|      | clean UNIT...                       | 清理运行时、缓存、状态、日志或单元配置                             |
|      | freeze PATTERN...                   | 冻结单元流程的执行                                                 |
|      | thaw PATTERN...                     | 恢复冻结单元的执行                                                 |
|      | set-property UNIT PROPERTY=VALUE... | 设置单元的一个或多个属性                                           |
|      | bind UNIT PATH [PATH]               | 绑定挂载从主机到单元命名空间的路径                                 |
|      | mount-image UNIT PATH [PATH [OPTS]] | 将映像从主机装载到单元的命名空间中                                 |
|      | service-log-level SERVICE [LEVEL]   | 获取/设置服务的日志记录阈值                                        |
|      | service-log-target SERVICE [TARGET] | 获取/设置服务的日志记录目标                                        |
|      | reset-failed [PATTERN...]           | 重置所有、一个或多个单元的失败状态                                 |
|      | whoami [PID...]                     | 返回单元调用者或指定的PID                                          |

### 单位文件命令

| 常用 | 命令                         | 解释                                               |
| ---- | ---------------------------- | -------------------------------------------------- |
|      | list-unit-files [PATTERN...] | 列出已安装的单元文件                               |
| ■■   | enable [UNIT...\|PATH...]    | 启用一个或多个单位文件                             |
| ■■   | disable UNIT...              | 禁用一个或多个单位文件                             |
|      | reenable UNIT...             | 重新启用一个或多个单位文件                         |
|      | preset UNIT...               | 根据预设配置启用/禁用一个或多个单元文件            |
|      | preset-all                   | 根据预设配置启用/禁用所有单元文件                  |
|      | is-enabled UNIT...           | 检查单位文件是否启用                               |
|      | mask UNIT...                 | 屏蔽一个或多个单元                                 |
|      | unmask UNIT...               | 取消屏蔽一个或多个单元                             |
|      | link PATH...                 | 将一个或多个单位文件链接到搜索路径                 |
|      | revert UNIT...               | 将一个或多个单元文件还原为供应商版本               |
|      | add-wants TARGET UNIT...     | 在指定的一个或多个单元上为目标添加Wants依赖关系    |
|      | add-requires TARGET UNIT...  | 在指定的一个或多个单元上为目标添加Requires依赖关系 |
|      | edit UNIT...                 | 编辑一个或多个单位文件                             |
|      | get-default                  | 获取默认目标的名称                                 |
|      | set-default TARGET           | 设置默认目标                                       |

### 机器命令

| 常用 | 命令                       | 解释               |
| ---- | -------------------------- | ------------------ |
|      | list-machines [PATTERN...] | 列出本地容器和主机 |

### 作业命令

| 常用 | 命令                   | 解释                     |
| ---- | ---------------------- | ------------------------ |
|      | list-jobs [PATTERN...] | 列出作业                 |
|      | cancel [JOB...]        | 取消所有、一个或多个作业 |

### 环境命令

| 常用 | 命令                              | 解释                       |
| ---- | --------------------------------- | -------------------------- |
|      | show-environment                  | 导出环境                   |
|      | set-environment VARIABLE=VALUE... | 设置一个或多个环境变量     |
|      | unset-environment VARIABLE...     | 取消设置一个或多个环境变量 |
|      | import-environment VARIABLE...    | 导入全部或部分环境变量     |

### 管理状态命令

| 常用 | 命令                     | 解释                          |
| ---- | ------------------------ | ----------------------------- |
| ■■   | daemon-reload            | 重新加载systemd管理器配置     |
|      | daemon-reexec            | 重新执行systemd管理器         |
|      | log-level [LEVEL]        | 获取/设置管理器的日志记录阈值 |
|      | log-target [TARGET]      | 获取/设置管理器的日志记录目标 |
|      | service-watchdogs [BOOL] | 获取/设置服务监视器状态       |

### 系统命令

| 常用 | 命令                      | 解释                           |
| ---- | ------------------------- | ------------------------------ |
|      | is-system-running         | 检查系统是否完全运行           |
|      | default                   | 进入系统默认模式               |
|      | rescue                    | 进入系统救援模式               |
|      | emergency                 | 进入系统紧急模式               |
|      | halt                      | 关闭并停止系统                 |
|      | poweroff                  | 关闭并关闭系统电源             |
|      | reboot                    | 关闭并重新启动系统             |
|      | kexec                     | 使用kexec关闭并重新启动系统    |
|      | soft-reboot               | 关闭并重新启动用户空间         |
|      | exit [EXIT_CODE]          | 请求用户实例或容器退出         |
|      | switch-root [ROOT [INIT]] | 更改为其他根文件系统           |
|      | suspend                   | 暂停系统                       |
|      | hibernate                 | 使系统休眠                     |
|      | hybrid-sleep              | 休眠并挂起系统                 |
|      | suspend-then-hibernate    | 暂停系统，一段时间后唤醒并休眠 |

### 选项

| 常用 | 短选项  | 长选项                  | 解释                                                         |
| ---- | ------- | ----------------------- | ------------------------------------------------------------ |
|      |         | --system                | 连接到系统管理器                                             |
|      |         | --user                  | 连接到用户服务管理器                                         |
|      | -H      | --host=[USER@]HOST      | 在远程主机上操作                                             |
|      | -M      | --machine=CONTAINER     | 在本地容器上操作                                             |
|      | -t      | --type=TYPE             | 列出特定类型的单位                                           |
|      |         | --state=STATE           | 列出具有特定LOAD、SUB、ACTIVE状态的单元                      |
|      |         | --failed                | 等同于--state=failed                                         |
|      | -p      | --property=NAME         | 仅显示此名称的属性                                           |
|      | -P NAME |                         | 等同于--value --property=NAME                                |
|      | -a      | --all                   | 显示当前内存中的所有属性或单元                               |
|      | -l      | --full                  | 不要在输出中省略单位名称                                     |
|      | -r      | --recursive             | 显示主机和本地容器的单元列表                                 |
|      |         | --with-dependencies     | 使用status、cat、list-units、list-unit-files显示单元依赖关系 |
|      |         | --job-mode=MODE         | 指定在排队新作业时如何处理已排队的作业                       |
|      | -T      | --show-transaction      | 查询单位作业时，显示完整事务记录                             |
|      |         | --show-types            | 显示套接字时，明确显示其类型                                 |
|      |         | --value                 | 显示属性时，仅打印值                                         |
|      |         | --check-inhibitors=MODE | 是否在关机、睡觉或休眠前检查抑制                             |
|      | -i      |                         | 等同于--check-inhibitors=no                                  |
|      |         | --kill-whom=WHOM        | 向谁发送信号                                                 |
|      |         | --kill-value=INT        | 排队信号值                                                   |
|      | -s      | --signal=SIGNAL         | 发送哪个信号                                                 |
|      |         | --what=RESOURCES        | 要删除哪些类型的资源                                         |
|      |         | --now                   | 启用或禁用后启动或停止装置                                   |
|      |         | --dry-run               | 只打印将要执行的操作                                         |
|      | -q      | --quiet                 | 抑制输出                                                     |
|      |         | --no-warn               | 抑制默认显示的几个警告                                       |
|      |         | --wait                  | 对于重新启动，请等待服务再次停止                             |
|      |         |                         | 如果系统正在运行，请等待启动完成                             |
|      |         | --no-block              | 不要等到操作完成                                             |
|      |         | --no-wall               | 挂起/关机/重启前不要发送墙消息                               |
|      |         | --no-reload             | 打开/关闭单元文件后，不要重新加载守护进程                    |
|      |         | --legend=BOOL           | 启用/禁用图例(列标题和提示)                                  |
|      |         | --no-pager              | 不要将输出管道传输到页                                       |
|      |         | --no-ask-password       | 不要询问系统密码                                             |
|      |         | --global                | 全局编辑/启用/禁用/屏蔽默认用户单元文件                      |
|      |         | --runtime               | 临时编辑/启用/禁用/屏蔽单元文件，直到下次重新启动            |
|      | -f      | --force                 | 启用单元文件时，覆盖现有符号链接关闭时，立即执行操作         |
|      |         | --preset-mode=          | 仅应用启用、仅禁用或所有预设                                 |
|      |         | --root=PATH             | 编辑/启用/禁用/屏蔽指定根目录中的单元文件                    |
|      |         | --image=PATH            | 编辑/启用/禁用/屏蔽指定磁盘映像中的单元文件                  |
|      |         | --image-policy=POLICY   | 指定磁盘映像解析策略                                         |
|      | -n      | --lines=INTEGER         | 要显示的日记账分录数                                         |
|      | -o      | --output=STRING         | 更改日志输出模式                                             |
|      |         | --firmware-setup        | 告诉固件在下次启动时显示设置菜单                             |
|      |         | --boot-loader-menu=TIME | 下次启动时启动到引导加载程序菜单                             |
|      |         | --plain                 | 将单元依赖关系打印为列表而不是树                             |
|      |         | --timestamp=FORMAT      | 更改打印时间戳的格式                                         |
|      |         | --read-only             | 创建只读绑定挂载                                             |
|      |         | --mkdir                 | 如果缺少，请在装载前创建目录                                 |
|      |         | --drop-in=NAME          | 使用指定的插入文件名编辑单位文件                             |
|      |         | --when=TIME             | 在特定时间戳后安排暂停/关机/重启/kexec操作                   |

### 示例

| 常用 | 命令                    | 解释                      |
| ---- | ----------------------- | ------------------------- |
| ■■   | systemctl daemon-reload | 重新加载systemd管理器配置 |
| ■■   | systemctl cat nginx     | 打印服务配置文件          |
| ■■   | systemctl status nginx  | 检查服务状态              |
| ■■   | systemctl start nginx   | 启动服务                  |
| ■■   | systemctl stop nginx    | 停止服务                  |
| ■■   | systemctl kill nginx    | 强制停止服务              |
| ■■   | systemctl reload nginx  | 重新加载服务              |
| ■■   | systemctl restart nginx | 重启服务                  |
| ■■   | systemctl enable nginx  | 设置服务开机自启          |
| ■■   | systemctl disable nginx | 取消服务开机自启          |

### 状态

```txt
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/usr/lib/systemd/system/ssh.service; enabled; preset: enabled)
     Active: active (running) since Thu 2025-03-06 08:34:35 CST; 5h 50min ago
TriggeredBy: ● ssh.socket
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 1701 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
   Main PID: 1715 (sshd)
      Tasks: 1 (limit: 9382)
     Memory: 3.2M (peak: 20.3M)
        CPU: 72ms
     CGroup: /system.slice/ssh.service
             └─1715 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"
```

- `Unit`(第一行)：服务名和简介
- `Loaded`：服务是否已被加载
  - `loaded`：已被加载
  - `/usr/lib/systemd/system/ssh.service`：服务路径
  - `enabled`：开机自启
  - `preset: enabled`：
- `Active`：活动状态
  - `Active (running)`：正在运行
  - `Active (exited)`：已经运行过并已退出
  - `Active (waiting)`：正在等待某些事件
  - `Active (listening)`：正在运行并监听端口以接收连接
  - `inactive`：未运行
  - `activating`：正在启动
  - `deactivating`：正在停止
- `TriggeredBy`：
- `Docs`：文档
- `Process`：
- `Main PID`：主进程的PID(Process ID)
- `Tasks`：任务数
- `Memory`：内存占用
- `CPU`：CPU时间
- `CGroup`：控制组信息

## tar 打包和解包

- **格式：`tar [选项...] [FILE]...`**

### 选项

| 常用 | 短选项 | 长选项                       | 解释                         |
| ---- | ------ | ---------------------------- | ---------------------------- |
|      | -A     | --catenate / --concatenate   | 追加tar文件至归档            |
| ■■   | -c     | --create                     | 创建一个新归档               |
|      |        | --delete                     | 从归档中删除                 |
|      | -d     | --diff / --compare           | 找出归档和文件系统的差异     |
|      | -r     | --append                     | 追加文件至归档结尾           |
|      |        | --test-label                 | 测试归档卷标并退出           |
|      | -t     | --list                       | 列出归档内容                 |
|      | -u     | --update                     | 仅追加比归档中副本更新的文件 |
| ■■   | -x     | --extract / --get            | 从归档中解出文件             |
| ■■   | -z     | --gzip / --gunzip / --ungzip | 通过gzip过滤归档             |
| ■■   | -f     | --file=ARCHIVE               | 压缩文件名                   |
| ■■   | -C     | --directory=DIR              | 解压目录                     |
|      | -v     | --verbose                    | 显示操作记录                 |

### 示例

| 常用 | 命令                             | 解释                            |
| ---- | -------------------------------- | ------------------------------- |
| ■    | tar -cf file.tar file            | 打包file文件为file.tar          |
| ■    | tar -xf file.tar                 | 解包file.tar到当前目录          |
| ■    | tar -cf folder.tar folder        | 打包folder文件夹为folder.tar    |
| ■    | tar -xf folder.tar -C folder     | 解包folder.tar到folder目录      |
| ■■   | tar -czf file.tar.gz file        | 压缩file文件为file.tar.gz       |
| ■■   | tar -xzf file.tar.gz             | 解压file.tar.gz到当前目录       |
| ■■   | tar -czf folder.tar.gz folder    | 压缩folder文件夹为folder.tar.gz |
| ■■   | tar -xzf folder.tar.gz -C folder | 解压folder.tar.gz到folder目录   |

## gzip 压缩和解压

- **格式：`gzip [OPTION]... [FILE]...`**

### 选项

| 常用 | 短选项 | 长选项        | 解释                                   |
| ---- | ------ | ------------- | -------------------------------------- |
|      | -c     | --stdout      | 在标准输出上写入，保持原始文件不变     |
| ■■   | -d     | --decompress  | 解压                                   |
|      | -f     | --force       | 强制覆盖输出文件并压缩链接             |
| ■■   | -k     | --keep        | 不删除输入文件                         |
|      | -l     | --list        | 列出压缩文件内容                       |
|      | -L     | --license     | 显示软件许可证                         |
|      | -n     | --no-name     | 不保存或恢复原始名称和时间戳           |
|      | -N     | --name        | 保存或恢复原始名称和时间戳             |
|      | -q     | --quiet       | 抑制所有警告                           |
| ■    | -r     | --recursive   | 在目录上递归操作                       |
|      |        | --rsyncable   | 制作rsync友好的存档                    |
|      | -S     | --suffix=SUF  | 在压缩文件上使用后缀SUF                |
|      |        | --synchronous | 同步输出(系统崩溃时更安全，但速度较慢) |
|      | -t     | --test        | 测试压缩文件的完整性                   |
|      | -1     | --fast        | 快速的压缩                             |
|      | -9     | --best        | 最好的压缩                             |
|      | -v     | --verbose     | 显示操作记录                           |

### 示例

| 常用 | 命令            | 解释                                |
| ---- | --------------- | ----------------------------------- |
| ■    | gzip file       | 压缩file文件为file.gz(删除原文件)   |
| ■■   | gzip -k file    | 压缩file文件为file.gz(不删除原文件) |
| ■■   | gzip -d file.gz | 解压file.gz文件为file               |
| ■    | gzip -r folder  | 把folder文件夹里的所有文件压缩      |
| ■    | gzip -rd folder | 解压folder文件夹里的所有压缩文件    |

## zip / unzip 压缩和解压

- **格式：`zip [-options] [-b path] [-t mmddyyyy] [-n suffixes] [zipfile list] [-xi list]`**
- **格式：`unzip [-Z] [-opts[modifiers]] file[.zip] [list] [-x xlist] [-d exdir]`**

### zip选项

| 常用 | 选项 | 解释                                   |
| ---- | ---- | -------------------------------------- |
|      | -f   | 仅更改文件                             |
|      | -u   | 仅更改或新建文件                       |
|      | -d   | 删除zip文件中的条目                    |
|      | -m   | 移动到zip文件(删除操作系统文件)        |
| ■■   | -r   | 递归到目录中                           |
|      | -j   | 不记录目录名                           |
|      | -J   | 不记录压缩文件前缀                     |
|      | -q   | 安静操作                               |
|      | -c   | 添加一行注释                           |
|      | -z   | 添加zip文件注释                        |
|      | -@   | 从stdin读取名称                        |
|      | -o   | 使zipfile与最新条目一样旧              |
|      | -x   | 排除以下名称                           |
|      | -i   | 仅包括以下名称                         |
|      | -F   | 修复压缩文件(-FF更努力)                |
|      | -D   | 不添加目录项                           |
|      | -A   | 调整自解压exe                          |
|      | -T   | 测试zip文件完整性                      |
|      | -X   | 排除eXtra文件属性                      |
|      | -y   | 将符号链接存储为链接，而不是引用的文件 |
|      | -e   | 加密                                   |
|      | -n   | 不要压缩这些后缀                       |
|      | -0   | 仅存档                                 |
|      | -1   | 快速的压缩                             |
|      | -9   | 最好的压缩                             |
|      | -v   | 显示操作记录                           |

### unzip选项

| 常用 | 选项 | 解释                                 |
| ---- | ---- | ------------------------------------ |
|      | -p   | 将文件提取到管道，无消息             |
|      | -l   | 列表文件（短格式）                   |
|      | -f   | 刷新现有文件，不创建任何文件         |
|      | -t   | 测试压缩存档数据                     |
|      | -u   | 更新文件，必要时创建                 |
|      | -z   | 仅显示存档注释                       |
|      | -v   | 显示版本信息                         |
|      | -T   | 时间戳存档到最新                     |
|      | -x   | 排除以下文件                         |
| ■■   | -d   | 将文件解压缩到指定目录               |
|      | -n   | 从不覆盖现有文件                     |
|      | -q   | 安静模式(-qq更安静)                  |
|      | -o   | 在不提示的情况下覆盖文件             |
|      | -a   | 自动转换任何文本文件                 |
|      | -aa  | 将所有文件视为文本                   |
|      | -j   | 不创建目录                           |
|      | -U   | 对所有非ASCII Unicode使用转义        |
|      | -UU  | 忽略任何Unicode字段                  |
|      | -C   | 不区分大小写匹配文件名               |
|      | -L   | 文件名转为小写                       |
|      | -X   | 还原UID/GID信息                      |
|      | -V   | 保留VMS版本号                        |
|      | -K   | 保留setuid/setgid/tacky权限          |
|      | -M   | 管道通过more页                       |
|      | -O   | 为DOS、Windows和OS/2存档指定字符编码 |
|      | -I   | 为UNIX和其他存档指定字符编码         |

### 示例

| 常用 | 命令                       | 解释                         |
| ---- | -------------------------- | ---------------------------- |
| ■■   | zip file.zip file          | 压缩file文件为file.zip       |
| ■■   | unzip file.zip             | 解压file.zip到当前目录       |
| ■■   | zip -r folder.zip folder   | 压缩folder文件夹为folder.zip |
| ■■   | unzip folder.zip           | 解压folder.zip到当前目录     |
| ■■   | unzip folder.zip -d folder | 解压folder.zip到folder目录   |

## top 查看CPU占用

### 选项

| 常用 | 短选项 | 长选项                     | 解释                                |
| ---- | ------ | -------------------------- | ----------------------------------- |
|      | -b     | --batch-mode               | 在非交互式批处理模式下运行          |
|      | -c     | --cmdline-toggle           | 反转上次记忆的c状态                 |
|      | -d     | --delay =SECS [.TENTHS]    | 迭代延迟                            |
|      | -E     | --scale-summary-mem =SCALE | 将SCALE的内存设置为k、m、g、t、p、e |
|      | -e     | --scale-task-mem =SCALE    | 使用k、m、g、t、p为SCALE设置内存    |
|      | -H     | --threads-show             | 显示任务及其所有线程                |
|      | -i     | --idle-toggle              | 反转上次记忆中的i状态               |
|      | -n     | --iterations =NUMBER       | 退出最大迭代次数                    |
|      | -O     | --list-fields              | 输出所有字段名，然后退出            |
|      | -o     | --sort-override =FIELD     | 对这个名为FIELD的字段进行强制排序   |
|      | -p     | --pid =PIDLIST             | 仅监视PIDLIST中的任务               |
|      | -S     | --accum-time-toggle        | 反转上次记忆的S状态                 |
|      | -s     | --secure-mode              | 在安全模式限制下运行                |
|      | -U     | --filter-any-user =USER    | 仅显示用户拥有的进程                |
|      | -u     | --filter-only-euser =USER  | 仅显示用户拥有的进程                |
|      | -w     | --width [=COLUMNS]         | 更改打印宽度                        |
|      | -1     | --single-cpu-toggle        | 反转上次记住的1状态                 |

### `top`输出

```txt
top - 14:32:48 up  3:03,  1 user,  load average: 0.13, 0.09, 0.07
Tasks: 143 total,   1 running, 142 sleeping,   0 stopped,   0 zombie
%Cpu(s):  1.3 us,  0.3 sy,  0.0 ni, 98.3 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   1677.1 total,    274.6 free,    845.7 used,    713.8 buff/cache
MiB Swap:      0.0 total,      0.0 free,      0.0 used.    831.4 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  14169 root      20   0   11952   6016   3840 R   0.3   0.4   0:00.03 top
      1 root      20   0   22728  11664   7184 S   0.0   0.7   0:03.41 systemd
```

1. top - 14:32:48 up  3:03,  1 user,  load average: 0.13, 0.09, 0.07
   - `14:32:48 up`：当前时间
   - `3:03`：已经运行时间
   - `1 user`：登录用户数量
   - `load average: 0.13, 0.09, 0.07`：1、5、15分钟的负载情况
2. Tasks: 143 total,   1 running, 142 sleeping,   0 stopped,   0 zombie
   - `143 total`：总进程数
   - `1 running`：正在运行
   - `142 sleeping`：休眠
   - `0 stopped`：停止
   - `0 zombie`：僵尸
3. %Cpu(s):  1.3 us,  0.3 sy,  0.0 ni, 98.3 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
   - `1.3 us`：用户空间占用CPU的百分比
   - `0.3 sy`：内核空间占用CPU的百分比
   - `0.0 ni`：改变过优先级的进程占用CPU的百分比
   - `98.3 id`：空闲CPU百分比
   - `0.0 wa`： IO等待占用CPU的百分比
   - `0.0 hi`：硬中断占用CPU的百分比
   - `0.0 si`：软中断占用CPU的百分比
   - `0.0 st`：
4. MiB Mem :   1677.1 total,    274.6 free,    845.7 used,    713.8 buff/cache
   - `1677.1 total`：物理内存总量
   - `274.6 free`：空闲内存总量
   - `845.7 used`：使用中的内存总量
   - `713.8 buff/cache`：缓存的内存量
5. MiB Swap:      0.0 total,      0.0 free,      0.0 used.    831.4 avail Mem
   - `0.0 total`：交换区总量
   - `0.0 free`：使用的交换区总量
   - `0.0 used`：空闲交换区总量
   - `831.4 avail Mem`：缓冲的交换区总量(可用内存)
6. PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
7. 1   root      20   0   22728  11664   7184 S   0.0   0.7   0:03.41 systemd
   - `PID`：进程ID
   - `USER`：进程所有者的用户名
   - `PR`：优先级
   - `NI`：nice值。负值表示高优先级，正值表示低优先级P最后使用的CPU，仅在多CPU环境下有意义
   - `VIRT`：进程使用的虚拟内存总量KB
   - `RES`：进程使用的、未被换出的物理内存大小KB
   - `SHR`：
   - `S`：[进程状态标志](#stat-进程状态标志)
   - `%CPU`：CPU使用率
   - `%MEM`：内存使用率
   - `TIME+`：累计CPU时间
   - `COMMAND`：完整命令

## free 查看内存占用

### 选项

| 常用 | 短选项 | 长选项      | 解释                             |
| ---- | ------ | ----------- | -------------------------------- |
|      | -b     | --bytes     | 以B为单位显示输出                |
|      |        | --kilo      | 以KB为单位显示输出               |
|      |        | --mega      | 以MB为单位显示输出               |
|      |        | --giga      | 以GB为单位显示输出               |
|      |        | --tera      | 以TB为单位显示输出               |
|      |        | --peta      | 以PB为单位显示输出               |
|      | -k     | --kibi      | 以KiB为单位显示输出              |
|      | -m     | --mebi      | 以MiB为单位显示输出              |
|      | -g     | --gibi      | 以GiB为单位显示输出              |
|      |        | --tebi      | 以TiB为单位显示输出              |
|      |        | --pebi      | 以PiB为单位显示输出              |
| ■■   | -h     | --human     | 显示人类可读的输出               |
|      |        | --si        | 使用1000而不是1024的幂           |
|      | -l     | --lohi      | 显示详细的低内存和高内存统计信息 |
|      | -L     | --line      | 在单行上显示输出                 |
|      | -t     | --total     | 显示RAM+交换的总计               |
|      | -v     | --committed | 显示已提交的内存和提交限制       |
|      | -s N   | --seconds N | 每N秒重复打印一次                |
|      | -c N   | --count N   | 重复打印N次，然后退出            |
| ■■   | -w     | --wide      | 宽输出                           |

### `free -hw`输出

```txt
               total        used        free      shared     buffers       cache   available
Mem:           1.6Gi       843Mi       273Mi       7.7Mi        87Mi       628Mi       833Mi
Swap:             0B          0B          0B
```

- `Mem`：内存
- `Swap`：交换
- `total`：总计
- `used`：已用
- `free`：空闲
- `shared`：共享
- `buffers`：缓冲
- `cache`：缓存
- `available`：可用

## iftop 查看网络占用

- **格式：`iftop -h | [-npblNBP] [-i interface] [-f filter code] [-F net/mask] [-G net6/mask6]`**

### 选项

| 常用 | 选项           | 解释                                                         |
| ---- | -------------- | ------------------------------------------------------------ |
|      | -n             | 不进行主机名查找                                             |
|      | -N             | 不要将端口号转换为服务                                       |
|      | -p             | 以混杂模式运行                                               |
|      | -b             | 不显示交通柱状图                                             |
|      | -B             | 显示带宽，单位B                                              |
|      | -i interface   | 监听命名接口                                                 |
|      | -f filter code | 使用筛选器代码选择要计数的数据包(默认：无，但只计数IP数据包) |
|      | -F net/mask    | 显示进出IPv4网络的流量                                       |
|      | -G net6/mask6  | 显示进出IPv6网络的流量                                       |
|      | -l             | 显示和计数链路本地IPv6流量(默认：关)                         |
|      | -P             | 显示端口和主机                                               |
|      | -m limit       | 设置带宽比例的上限                                           |
|      | -c config file | 指定备选配置文件                                             |
|      | -t             | 使用不带ncurses的文本界面                                    |
|      | -o 2s          | 按第一列排序(2s流量平均值)                                   |
|      | -o 10s         | 按第二列排序(10s流量平均值)(默认)                            |
|      | -o 40s         | 按第三列排序(40s流量平均)                                    |
|      | -o source      | 按源地址排序                                                 |
|      | -o destination | 按目的地址排序                                               |
|      | -s num         | 在数秒后打印一个文本输出，然后退出(与-t一起使用)             |
|      | -L num         | 要打印的行数(与-t一起使用)                                   |

### `iftop`输出

```txt
                     12.5Kb               25.0Kb               37.5Kb               50.0Kb          62.5Kb
└────────────────────┴────────────────────┴────────────────────┴────────────────────┴─────────────────────
iZzw8ow496sjz6Z                         => 116.30.122.204                          3.33Kb  4.26Kb  5.61Kb
                                        <=                                          160b    685b    863b
──────────────────────────────────────────────────────────────────────────────────────────────────────────
TX:             cum:    274KB   peak:   55.7Kb                            rates:   3.95Kb  4.66Kb  11.4Kb
RX:                    54.4KB           5.04Kb                                     1.06Kb  1.30Kb  1.83Kb
TOTAL:                  328KB           59.6Kb                                     5.02Kb  5.97Kb  13.2Kb
```

- `头部`：流量刻度尺
- `中部`：
  - `iZzw8ow496sjz6Z`：服务器名称
  - `=>`：发送数据
  - `<=`：接收数据
  - `116.30.122.204`：连接ip或域名
  - `3.33Kb  4.26Kb  5.61Kb`：2、10、40秒平均流量
  - `白色横条`：对应头部
- `底部`：
  - `TX`：发送数据
  - `RX`：接收数据
  - `TOTAL`：总数据
  - `cum`：总流量
  - `peak`：流量峰值
  - `rates`：2、10、40秒平均流量

## df 查看磁盘占用

- **格式：`df [OPTION]... [FILE]...`**

### 选项

| 常用 | 短选项 | 长选项                | 解释                                           |
| ---- | ------ | --------------------- | ---------------------------------------------- |
|      | -a     | --all                 | 包括伪、重复、不可访问的文件系统               |
|      | -B     | --block-size=SIZE     | 打印前按大小缩放尺寸                           |
|      | -h     | --human-readable      | 打印尺寸为1024的幂次方                         |
|      | -H     | --si                  | 打印尺寸为1000的幂次方                         |
|      | -i     | --inodes              | 列出索引节点信息而不是块使用情况               |
|      | -k     |                       | 等同于--block-size=1K                          |
|      | -l     | --local               | 将列表限制为本地文件系统                       |
|      |        | --no-sync             | 在获取使用信息之前不要调用sync(默认)           |
|      |        | --output[=FIELD_LIST] | 使用FIELD_LIST定义的输出格式                   |
|      | -P     | --portability         | 使用POSIX输出格式                              |
|      |        | --sync                | 在获取使用信息之前调用sync                     |
|      |        | --total               | 删除所有对可用空间不重要的条目，并生成一个总计 |
|      | -t     | --type=TYPE           | 将列表限制为type类型的文件系统                 |
|      | -T     | --print-type          | 打印文件系统类型                               |
|      | -x     | --exclude-type=TYPE   | 将列表限制为非type类型的文件系统               |

### `df -h`输出

```txt
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           168M  1.1M  167M   1% /run
efivarfs        256K  7.4K  244K   3% /sys/firmware/efi/efivars
/dev/vda3        40G  5.8G   32G  16% /
tmpfs           839M     0  839M   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/vda2       197M  6.2M  191M   4% /boot/efi
tmpfs           168M   16K  168M   1% /run/user/0
```

- `Filesystem`：文件系统名或设备名
- `Size`：文件系统的总大小
- `Used`：已使用的空间
- `Avail`：可用空间
- `Use%`：已用空间占总空间的比例
- `Mounted on`：文件系统挂载点
