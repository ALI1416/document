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

## 命令

| 常用 | 命令                | 作用                                       |
| ---- | ------------------- | ------------------------------------------ |
| ■    | alias               | 别名                                       |
|      | unalias             | 删除别名                                   |
|      | bg                  | 后台运行                                   |
|      | bind                | 设定Readline键绑定和变量                   |
|      | builtin             | 执行shell内建                              |
|      | caller              | 回当前子例程调用的上下文                   |
| ■■   | cd                  | 切换目录                                   |
| ■    | pwd                 | 当前目录                                   |
| ■■   | ls                  | 目录内容                                   |
| ■■   | mkdir               | 创建目录                                   |
| ■■   | rmdir               | 删除空目录                                 |
|      | du                  | 统计目录内容容量                           |
|      | which               | 命令位置                                   |
|      | touch               | 创建文件                                   |
|      | cp                  | 复制文件                                   |
|      | mv                  | 移动文件或目录                             |
|      | rm                  | 删除文件                                   |
|      | file                | 文件属性                                   |
|      | w                   | 所有登录用户信息                           |
|      | who                 | 所有登录用户信息                           |
|      | whoami              | 登录用户                                   |
|      | cat                 | 显示文件内容                               |
|      | tac                 | 按行倒序显示文件内容                       |
|      | more                | 分页显示文件内容                           |
|      | less                | 分页显示文件内容                           |
|      | head                | 显示文件头部内容                           |
|      | tail                | 显示文件尾部内容                           |
|      | command             | 执行一个简单命令或者显示命令的相关信息     |
|      | compgen             | 依据选项显示可能的补全                     |
|      | complete            | 指定Readline如何补全参数                   |
|      | compopt             | 修改或显示补全选项                         |
|      | coproc              | 创建副进程                                 |
|      | declare / typeset   | 设定变量的值和属性                         |
|      | set                 | 设定或取消设定shell选项和位置参数的值      |
|      | unset               | 取消设定shell变量和函数的值和属性          |
|      | dirs                | 显示目录栈                                 |
|      | disown              | 当前shell中删除任务                        |
|      | echo                | 将参数写到标准输出                         |
|      | enable              | 启用和禁用shell内建                        |
|      | eval                | 将参数作为shell命令执行                    |
|      | exec                | 使用指定命令替换shell                      |
|      | exit                | 退出shell                                  |
|      | export              | 为shell变量设定导出属性                    |
|      | fc                  | 从历史列表中显示或者执行命令               |
|      | fg                  | 将任务移至前台                             |
|      | getopts             | 解析选项参数                               |
|      | hash                | 记住或显示程序位置                         |
|      | help                | 帮助                                       |
|      | history             | 显示或操纵历史列表                         |
|      | jobs                | 显示任务状态                               |
|      | kill                | 向一个任务发送一个信号                     |
|      | let                 | 对算术表达式进行求值                       |
|      | local               | 定义局部变量                               |
|      | logout              | 退出一个登录shell                          |
|      | mapfile / readarray | 从标准输入读取行到索引数组变量中           |
|      | popd                | 从栈中删除目录                             |
|      | printf              | 格式化并打印                               |
|      | pushd               | 将目录添加到栈中                           |
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
