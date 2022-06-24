# 内部命令
## 所有命令
| 常用 | 命令        | 作用                                                    |
| ---- | ----------- | ------------------------------------------------------- |
|      | assoc       | 显示或修改文件扩展名关联。                              |
|      | attrib      | 显示或更改文件属性。                                    |
|      | bcdedit     | 设置启动数据库中的属性以控制启动加载。                  |
| ■    | call        | 从另一个批处理程序调用这一个。                          |
| ■■   | cd或chdir   | 显示当前目录的名称或将其更改。                          |
| ■    | chcp        | 显示或设置活动代码页数。                                |
|      | chkdsk      | 检查磁盘并显示状态报告。                                |
|      | chkntfs     | 显示或修改启动时间磁盘检查。                            |
| ■■   | cls         | 清除屏幕。                                              |
| ■    | cmd         | 打开另一个Windows命令解释程序窗口。                     |
| ■    | color       | 设置默认控制台前景和背景颜色。                          |
|      | comp        | 比较两个或两套文件的内容。                              |
|      | compact     | 显示或更改ntfs分区上文件的压缩。                        |
|      | convert     | 将fat卷转换成ntfs。你不能转换当前驱动器。               |
| ■■   | copy        | 将至少一个文件复制到另一个位置。                        |
| ■    | date        | 显示或设置日期。                                        |
| ■■   | del或erase  | 删除至少一个文件。                                      |
| ■■   | dir         | 显示一个目录中的文件和子目录。                          |
|      | diskpart    | 显示或配置磁盘分区属性。                                |
|      | doskey      | 编辑命令行、撤回Windows命令并创建宏。                   |
|      | driverquery | 显示当前设备驱动程序状态和属性。                        |
| ■■   | echo        | 显示消息，或将命令回显打开或关闭。                      |
|      | endlocal    | 结束批文件中环境更改的本地化。                          |
| ■■   | exit        | 退出cmd.exe程序(命令解释程序)。                         |
|      | fc          | 比较两个文件或两个文件集并显示它们之间的不同。          |
| ■■   | find        | 在一个或多个文件中搜索一个文本字符串。                  |
| ■■   | findstr     | 在多个文件中搜索字符串。                                |
| ■■   | for         | 为一组文件中的每个文件运行一个指定的命令。              |
|      | format      | 格式化磁盘，以便用于Windows。                           |
|      | fsutil      | 显示或配置文件系统属性。                                |
|      | f类型       | 显示或修改在文件扩展名关联中使用的文件类型。            |
| ■■   | goto        | 将Windows命令解释程序定向到批处理程序中某个带标签的行。 |
|      | gpresult    | 显示计算机或用户的组策略信息。                          |
| ■■   | help        | 提供Windows命令的帮助信息。                             |
|      | icacls      | 显示、修改、备份或还原文件和目录的访问控制列表(ACL)。   |
| ■■   | if          | 在批处理程序中执行有条件的处理操作。                    |
|      | label       | 创建、更改或删除磁盘的卷标。                            |
| ■■   | md或mkdir   | 创建一个目录。                                          |
|      | mklink      | 创建符号链接和硬链接                                    |
| ■    | mode        | 配置系统设备。                                          |
| ■    | more        | 逐屏显示输出。                                          |
| ■■   | move        | 将一个或多个文件从一个目录移动到另一个目录。            |
|      | openfiles   | 显示远程用户为了文件共享而打开的文件。                  |
|      | path        | 为可执行文件显示或设置搜索路径。                        |
| ■■   | pause       | 暂停批处理文件的处理并显示消息。                        |
|      | popd        | 还原通过pushd保存的当前目录的上一个值。                 |
|      | print       | 打印一个文本文件。                                      |
|      | prompt      | 更改Windows命令提示。                                   |
|      | pushd       | 保存当前目录，然后对其进行更改。                        |
| ■■   | rd或rmdir   | 删除目录。                                              |
|      | recover     | 从损坏的或有缺陷的磁盘中恢复可读信息。                  |
| ■■   | rem         | 记录批处理文件或config.sys中的注释(批注)。              |
| ■■   | ren或rename | 重命名文件。                                            |
| ■    | replace     | 替换文件。                                              |
|      | robocopy    | 复制文件和目录树的高级实用工具                          |
| ■■   | set         | 显示、设置或删除Windows环境变量。                       |
|      | setlocal    | 开始本地化批处理文件中的环境更改。                      |
|      | sc          | 显示或配置服务(后台进程)。                              |
|      | schtasks    | 安排在一台计算机上运行命令和程序。                      |
|      | shift       | 调整批处理文件中可替换参数的位置。                      |
| ■■   | shutdown    | 允许通过本地或远程方式正确关闭计算机。                  |
| ■    | sort        | 对输入排序。                                            |
| ■■   | start       | 启动单独的窗口以运行指定的程序或命令。                  |
|      | subst       | 将路径与驱动器号关联。                                  |
|      | systeminfo  | 显示计算机的特定属性和配置。                            |
| ■■   | tasklist    | 显示包括服务在内的所有当前运行的任务。                  |
| ■■   | taskkill    | 中止或停止正在运行的进程或应用程序。                    |
| ■    | time        | 显示或设置系统时间。                                    |
| ■    | title       | 设置cmd.exe会话的窗口标题。                             |
| ■    | tree        | 以图形方式显示驱动程序或路径的目录结构。                |
| ■■   | type        | 显示文本文件的内容。                                    |
|      | ver         | 显示Windows的版本。                                     |
|      | verify      | 告诉Windows是否进行验证，以确保文件正确写入磁盘。       |
|      | vol         | 显示磁盘卷标和序列号。                                  |
| ■■   | xcopy       | 复制文件和目录树。                                      |
|      | wmic        | 在交互式命令shell中显示wmi信息。                        |

## 常用简单命令
| 常用 | 命令    | 作用         | 示例         | 解释                     |
| ---- | ------- | ------------ | ------------ | ------------------------ |
| ■■   | help    | 帮助         | ①help        | ①显示所有系统命令        |
|      |         |              | ②help 命令名 | ②显示该命令的帮助信息    |
| ■■   | rem或:: | 注释         | rem 注释信息 | 注释                     |
| ■    | color   | 颜色         | color 07     | 设置黑底白字(见颜色代码) |
| ■    | mode    | 设置窗口大小 | mode 100,30  | 设置窗口宽100高30        |
| ■    | chcp    | 字符集       | ①chcp        | ①显示使用的字符集        |
|      |         |              | ②chcp 数字   | ②设置字符集              |
|      |         |              |              | (936是GBK，65001是UTF-8) |
| ■    | date    | 日期         | ①date        | ①显示并设置日期          |
|      |         |              | ②date /t     | ②显示日期                |
| ■    | time    | 时间         | ①time        | ①显示并设置时间          |
|      |         |              | ②time /t     | ②显示时间                |
| ■■   | cls     | 清除屏幕     |              |                          |
| ■■   | pause   | 暂停         |              |                          |
| ■■   | exit    | 退出         |              |                          |
| ■■   | goto    | 跳转         | goto 标签    | 跳转到标签处             |
| ■■   | :       | 标签         | :标签        | goto可以跳转到的地方     |
| ■■   | @       | 关闭本行回显 | @命令        | 关闭本行回显             |
| ■■   | /?      | 查看帮助     | 命令 /?      | 查看帮助信息             |

## 颜色代码
| 代码 | 颜色代码 | 颜色   | 色块                                          | 代码 | 颜色代码 | 颜色     | 色块                                          |
| ---- | -------- | ------ | --------------------------------------------- | ---- | -------- | -------- | --------------------------------------------- |
| 0    | 000000   | 黑色   | <div style="background:#000000;">&emsp;</div> | 8    | 808080   | 灰色     | <div style="background:#808080;">&emsp;</div> |
| 1    | 000080   | 蓝色   | <div style="background:#000080;">&emsp;</div> | 9    | 0000FF   | 淡蓝色   | <div style="background:#0000FF;">&emsp;</div> |
| 2    | 008000   | 绿色   | <div style="background:#008000;">&emsp;</div> | A    | 00FF00   | 淡绿色   | <div style="background:#00FF00;">&emsp;</div> |
| 3    | 008080   | 浅绿色 | <div style="background:#008080;">&emsp;</div> | B    | 00FFFF   | 淡浅绿色 | <div style="background:#00FFFF;">&emsp;</div> |
| 4    | 800000   | 红色   | <div style="background:#800000;">&emsp;</div> | C    | FF0000   | 淡红色   | <div style="background:#FF0000;">&emsp;</div> |
| 5    | 800080   | 紫色   | <div style="background:#800080;">&emsp;</div> | D    | FF00FF   | 淡紫色   | <div style="background:#FF00FF;">&emsp;</div> |
| 6    | 808000   | 黄色   | <div style="background:#808000;">&emsp;</div> | E    | FFFF00   | 淡黄色   | <div style="background:#FFFF00;">&emsp;</div> |
| 7    | C0C0C0   | 白色   | <div style="background:#C0C0C0;">&emsp;</div> | F    | FFFFFF   | 亮白色   | <div style="background:#FFFFFF;">&emsp;</div> |

## 特殊字符
| 常用 | 字符    | 作用                             | 示例                   | 解释                    |
| ---- | ------- | -------------------------------- | ---------------------- | ----------------------- |
| ■■   | ^       | 代码内换行符                     | ec^<br>ho hello        | 等价于echo hello        |
| ■■   | >       | 命令输出到文件                   | ①dir >1.txt            | ①内容覆盖到1.txt显      |
|      |         |                                  | ②dir >nul              | ②关闭dir回显            |
| ■■   | >>      | 命令输出到文件(追加)             | dir >>1.txt            | 内容追加到1.txt         |
| ■■   | <       | 文件中读取命令输入               | sort <1.txt            | 对1.txt文件内容进行排序 |
| ■■   | \|      | 管道符。左结果作为右参数         | dir c:\ \| findstr "w" | 输出c盘中含有w字符串    |
| ■■   | &       | 命令分隔符。相当于换行符         | dir a:\ & dir c:\      | 输出找不到a盘，输出c盘  |
| ■■   | \|\|    | 或操作                           | ①dir a:\ \|\| dir c:\  | ①输出找不到a盘，输出c盘 |
|      |         | 左失败，右执行；左成功，右不执行 | ②dir c:\ \|\| dir d:\  | ②输出c盘                |
| ■■   | &&      | 且操作                           | ①dir a:\ && dir c:\    | ①输出找不到a盘          |
|      |         | 左失败，右不执行；左成功，右执行 | ②dir c:\ && dir d:\    | ②输出c盘和d盘           |
| ■■   | && \|\| | 相当于if-else                    | dir c:\ && echo ok     | 输出c盘，输出ok         |
|      |         | 左成功，执行中；左失败，执行右   | \|\| echo error        |                         |
| ■■   | >&和<&  | 重定向左句柄到右                 | 见下                   | 见下                    |

默认情况下，可以从键盘将命令输入(即stdin句柄)发送到cmd，然后由cmd将命令输出(即stdout句柄)发送到命令提示符窗口。

| 句柄      | 代号 | 说明                             |
| --------- | ---- | -------------------------------- |
| stdin     | 0    | 键盘输入                         |
| stdout    | 1    | 输出到命令提示符窗口             |
| stderr    | 2    | 错误输出到命令提示符窗口         |
| undefined | 3-9  | 由应用程序和各个具体工具单独定义 |

数字0到9代表前10个句柄。可以使用命令cmd运行程序并将前10个句柄中的任何一个重定向到该程序。要指定想使用的句柄，可在重定向操作符前面键入该句柄的数字。如果未定义句柄，则默认的`<`重定向输入操作符是`0`，而默认的`>`重定向输出操作符是`1`。键入`>`或`<`操作符之后，必须指定要读取或写入数据的位置。可以指定文件名或另一个现有的句柄。

| 常用 | 命令               | 作用             | 示例              | 解释                             |
| ---- | ------------------ | ---------------- | ----------------- | -------------------------------- |
| ■■   | 2>                 | 重定向错误       | dir 1.txt 2>2.txt | 结果输出到1.txt，错误输出到2.txt |
| ■■   | 2>&1(2<&1效果一样) | 重定向错误到输出 | dir 1.txt 2>&1    | 结果和错误都输出到1.txt          |

## 转义字符
| 字符 | 转义 |
| ---- | ---- |
| "    | """  |
| "    | ^"   |
| %    | %%   |
| ^    | ^^   |
| &    | ^&   |
| <    | ^<   |
| >    | ^>   |
| \|   | ^\|  |

## 系统常量
| 常用 | 解释                               | 变量名                     | 示例值                                      |
| ---- | ---------------------------------- | -------------------------- | ------------------------------------------- |
| ■    | 公共软件安装路径(64位)             | ProgramFiles和ProgramW6432 | C:\Program Files                            |
| ■    | 公共软件安装路径(32位)             | ProgramFiles(x86)          | C:\Program Files (x86)                      |
|      | 公共常用软件安装路径(64位)         | CommonProgramFiles和       | C:\Program Files\Common Files               |
|      |                                    | CommonProgramW6432         |                                             |
|      | 公共常用软件安装路径(32位)         | CommonProgramFiles(x86)    | C:\Program Files (x86)\Common Files         |
|      | 公共软件数据路径                   | ALLUSERSPROFILE和          | C:\ProgramData                              |
|      |                                    | ProgramData                |                                             |
|      | 公共文件路径                       | PUBLIC                     | C:\Users\Public                             |
|      | 当前用户软件安装路径               | APPDATA                    | C:\Users\Administrator\AppData\Roaming      |
|      | 当前用户软件数据                   | LOCALAPPDATA               | C:\Users\Administrator\AppData\Local        |
| ■■   | 当前用户的主盘                     | HOMEDRIVE                  | C:                                          |
|      | 当前用户路径(无盘符)               | HOMEPATH                   | \Users\Administrator                        |
| ■■   | 当前用户路径                       | USERPROFILE                | C:\Users\Administrator                      |
|      | 当前用户临时文件路径               | TEMP和TMP                  | C:\Users\ADMINI~1\AppData\Local\Temp        |
| ■■   | 当前用户名                         | USERNAME                   | Administrator                               |
|      | 当前用户域名                       | USERDOMAIN和               | DESKTOP-6TL0M6V                             |
|      |                                    | USERDOMAIN_ROAMINGPROFILE  |                                             |
|      | 当前用户域名                       | LOGONSERVER                | \\\DESKTOP-6TL0M6V                          |
| ■    | 系统盘符                           | SystemDrive                | C:                                          |
| ■    | 系统路径                           | SystemRoot和windir         | C:\Windows                                  |
|      | 系统驱动数据路径                   | DriverData                 | C:\Windows\System32\Drivers\DriverData      |
| ■    | 计算机名                           | COMPUTERNAME               | DESKTOP-6TL0M6V                             |
| ■    | 操作系统名                         | OS                         | Windows_NT                                  |
|      | 处理器的芯片架构                   | PROCESSOR_ARCHITECTURE     | AMD64                                       |
|      | 处理器标识符                       | PROCESSOR_IDENTIFIER       | Intel64 Family 6 Model 60 Stepping 3        |
|      |                                    |                            | , GenuineIntel                              |
|      | 处理器的型号                       | PROCESSOR_LEVEL            | 6                                           |
|      | 处理器的版本号                     | PROCESSOR_REVISION         | 3c03                                        |
|      | 处理器数                           | NUMBER_OF_PROCESSORS       | 4                                           |
|      | cmd路径                            | ComSpec                    | C:\Windows\system32\cmd.exe                 |
|      | cmd提示符设置                      | PROMPT                     | &#36;P$G                                    |
| ■■   | 可执行文件的搜索路径               | Path                       | C:\Program Files\Java\jdk1.8.0_201\bin;等   |
|      | 可被执行的文件扩展名               | PATHEXT                    | .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;     |
|      |                                    |                            | .WSF;.WSH;.MSC                              |
|      | WindowsPowerShell模块路径          | PSModulePath               | C:\Program Files\WindowsPowerShell\Modules; |
|      |                                    |                            | C:\Windows\system32\WindowsPowerShell       |
|      |                                    |                            | \v1.0\Modules                               |
|      | 连接到终端服务会话时的连接和会话名 | SESSIONNAME                | Console                                     |

## 系统变量
| 常用 | 解释                  | 变量名             | 示例值                        |
| ---- | --------------------- | ------------------ | ----------------------------- |
| ■■   | cd                    | 当前路径           | C:\Users\Administrator        |
| ■    | date                  | 当前日期           | 2021/04/28 周三               |
| ■    | time                  | 当前时间           | 13:24:48.29                   |
| ■■   | random                | 0和32767之间的整数 | 28016                         |
| ■■   | errorlevel            | errorlevel数值     | 1                             |
|      | cmdextversion         | cmd版本号          | 2                             |
|      | cmdcmdline            | cmd路径            | "C:\Windows\system32\cmd.exe" |
|      | highestnumanodenumber | 最高numa节点号     | 0                             |

## 拓展变量
| 常用 | 表达式 | 解释             | 示例 | 示例值                |
| ---- | ------ | ---------------- | ---- | --------------------- |
| ■    | I      | 文件名           | 0    | "test a.bat"          |
| ■■   | ~I     | 去引号文件名     | ~0   | test a.bat            |
| ■    | ~dI    | 盘符             | ~d0  | E:                    |
| ■    | ~pI    | 路径             | ~p0  | \                     |
| ■    | ~nI    | 文件名(无拓展名) | ~n0  | test a                |
| ■    | ~xI    | 拓展名           | ~x0  | .bat                  |
| ■■   | ~fI    | 全路径           | ~f0  | E:\test a.bat         |
|      | ~sI    | 路径为短路径     | ~s0  | E:\test a.bat         |
|      | ~aI    | 属性             | ~a0  | --a--------           |
|      | ~tI    | 创建日期和时间   | ~t0  | 2021/05/13 周四 15:18 |
| ■    | ~zI    | 大小             | ~z0  | 20                    |
| ■■   | ~dpI   | 盘符+路径        | ~dp0 | E:\                   |
| ■■   | ~nxI   | 文件名           | ~nx0 | test a.bat            |

## 变量延迟
**未开启变量延迟**
```bat
@echo off
set test=aaa
if %test%==aaa (
    set test=bbb
    echo %test%
)
```
输出`aaa`  
**开启变量延迟**  
使用`setLocal enableDelayedExpansion`开启变量延迟，使用`!变量名!`来使用变量。  
使用`setLocal disableDelayedExpansion`关闭变量延迟。  
注意：使用完及时关闭
```bat
@echo off
setLocal enableDelayedExpansion
set test=aaa
if %test%==aaa (
    set test=bbb
    echo %test%
    echo !test!
)
setLocal disableDelayedExpansion
```
输出`aaa`和`bbb`

## 参数传递
**接收参数**  
使用`%I`来接收参数值，`I`从`1-9`最多接收9个参数。  
注意：`%0`代表命令本身不是参数。  
注意：`%~I`可以去除双引号。  
**传递参数**  
直接在命令后面写入参数值，如果有空格需要用双引号。  

## 字符串操作
**截取**  
```bat
@echo off
set a=asdfghjkl
echo 原字符串 %a%

echo 只要前3个 %a:~0,3%
echo 不要前3个 %a:~3%
echo 跳过前1个字符，只要前3个 %a:~1,3%

echo 不要后3个 %a:~0,-3%
echo 只要后3个 %a:~-3%
echo 跳过前1个字符，不要后3个 %a:~1,-3%

echo 后6个字符中，只要前2个 %a:~-6,2%
echo 后6个字符中，不要前2个 %a:~-6,-2%
```
**替换**  
```bat
@echo off
set a=asdfghjklasdfghjkl
echo 原字符串 %a%

echo 替换df成123 %a:df=123%

echo 原字符串并没有被替换 %a%
set a=%a:df=123%
echo 使用set覆盖字符串后 %a%
```
**合并**  
```bat
@echo off
set a=asdfghjkl
set b=1234567890
echo 原字符串a %a%
echo 原字符串b %b%

echo 合并ab字符串 %a%%b%

echo 原字符串a并没有被合并 %a%
echo 原字符串b并没有被合并 %b%
set a=%a%%b%
echo 使用set合并字符串ab并赋值给a后 %a%
echo 原字符串b并没有被合并 %b%
```

## 一般表达式
| 常用 | 表达式    | 解释                                 | 示例   | 解释                        |
| ---- | --------- | ------------------------------------ | ------ | --------------------------- |
| ■■   | .         | 通配符: 任何字符                     | a.b    | a和b之间有一个字符          |
| ■■   | *         | 重复: 以前字符或类出现零或零以上次数 | ba*d   | b和d之间只能是0或0个以上的a |
| ■■   | ^         | 行位置: 行的开始                     | ^a     | a开头                       |
| ■■   | $         | 行位置: 行的终点                     | a$     | a结尾                       |
| ■■   | [class]   | 字符类: 任何在字符集中的字符         | [abc]  | 存在abc任意字符             |
| ■■   | [^class]  | 补字符类: 任何不在字符集中的字符     | [^abc] | 不存在abc任意字符           |
| ■■   | [x-y]     | 范围: 在指定范围内的任何字符         | [a-z]  | 存在a-z任意字符             |
|      | \x        | Escape: 元字符x的文字用法            | ?      |                             |
|      | \\&lt;xyz | 字位置: 字的开始                     | ?      |                             |
|      | xyz\\>    | 字位置: 字的结束                     | ?      |                             |

## 运算符
| 常用 | 运算符  | 解释 |
| ---- | ------- | ---- |
| ■■   | eq或equ | ==   |
| ■■   | ne或neq | !=   |
| ■■   | gt或gtr | >    |
| ■■   | ge或geq | >=   |
| ■■   | lt或lss | <    |
| ■■   | le或leq | <=   |

## echo 显示消息，或者启用或关闭命令回显
**开关格式：`echo [on | off]`**  
**打印格式：`echo [消息]`**  
### 命令
| 常用 | 命令      | 解释                  |
| ---- | --------- | --------------------- |
|      | echo      | 显示当前回显状态      |
| ■■   | echo off  | 关闭回显              |
|      | echo on   | 开启回显              |
| ■■   | echo 消息 | 显示消息              |
| ■■   | echo.     | 显示回车              |
| ■■   | echo %cd% | 显示系统常量和变量    |
| ■■   | echo !a!  | 使用a变量的延迟值     |
| ■■   | echo %~f0 | 显示拓展变量(仅限bat) |

## set 显示、设置或删除cmd.exe环境变量
**编辑格式：`set [变量名=[值]]`**  
**计算格式：`set /a [变量名=]表达式`**  
**输入格式：`set /p 变量名=[提示信息]`**
### 命令
| 常用 | 命令            | 解释                          |
| ---- | --------------- | ----------------------------- |
| ■    | set             | 显示所有变量以及系统变量      |
| ■    | set a           | 显示a变量或a开头的变量        |
| ■■   | set a=1         | 设置a的值为1                  |
| ■    | set a=          | 删除a                         |
|      | set /a 1+1      | 计算1+1并输出                 |
| ■    | set /a v=1+1    | 计算1+1赋值到v并输出          |
|      | set /a v=066    | 计算8进制数字                 |
|      | set /a v=0x66   | 计算16进制数字                |
|      | set /p a=       | 用户手动赋值a                 |
| ■■   | set /p a=请输入 | 用户手动赋值a，并提示“请输入” |

## cd 显示当前目录名或改变当前目录
**格式：`cd [/d] [盘符:][路径]`**
### 命令
| 常用 | 命令         | 解释                 |
| ---- | ------------ | -------------------- |
| ■    | cd           | 显示当前路径         |
| ■■   | cd ..        | 返回父目录           |
| ■■   | cd /         | 返回该盘根目录       |
| ■■   | cd abc       | 打开abc文件夹        |
| ■    | cd /d e:     | 打开e盘，同命令e:    |
| ■    | cd /d e:/abc | 打开e盘下的abc文件夹 |

## dir 显示目录中的文件和子目录列表
**格式：`dir [盘符:][路径][文件名] [/a[[:]属性]] [/b] [/c] [/d] [/l] [/n] [/o[[:]排列顺序]] [/p] [/q] [/r] [/s] [/t[[:]时间段]] [/w] [/x] [/4]`**
### /a 属性
| 字段 | 含义           | 字段 | 含义           |
| ---- | -------------- | ---- | -------------- |
| d    | 目录           | r    | 只读文件       |
| h    | 隐藏文件       | a(?) | 准备存档的文件 |
| s    | 系统文件       | i(?) | 无内容索引文件 |
| l(?) | 重新分析点     | o(?) | 脱机文件       |
| -    | 表示“否”的前缀 |      |                |

### /o 排列顺序
| 字段 | 含义               | 字段 | 含义                  |
| ---- | ------------------ | ---- | --------------------- |
| n    | 按名称(字母顺序)   | s    | 按大小(从小到大)      |
| e    | 按扩展名(字母顺序) | d    | 按日期/时间(从先到后) |
| g    | 组目录优先         | -    | 反转顺序的前缀        |

### /t 时间段
| 字段 | 含义           | 字段 | 含义         |
| ---- | -------------- | ---- | ------------ |
| c    | 创建时间       | a    | 上次访问时间 |
| w    | 上次写入的时间 |      |              |

### 命令
| 常用 | 命令         | 解释                           |
| ---- | ------------ | ------------------------------ |
| ■■   | dir          | 当前路径下文件和文件夹         |
| ■■   | dir c:       | c盘                            |
| ■■   | dir e:files  | e盘files文件夹下               |
|      | dir e:/1.txt | e盘1.txt文件                   |
| ■■   | dir e:/*.txt | e盘下后缀为txt的文件           |
| ■■   | dir /a       | +隐藏的文件夹和文件夹          |
| ■■   | dir /ad      | 仅显示文件夹                   |
| ■■   | dir /a-d     | 仅显示文件                     |
| ■■   | dir /b       | 空格式                         |
|      | dir /-c      | 不显示容量大小的千分符         |
|      | dir /w       | 宽格式，按行                   |
|      | dir /d       | 宽格式，按列                   |
| ■    | dir /l       | 小写                           |
|      | dir /-n      | 旧格式                         |
| ■    | dir /o-n     | 文件名倒排                     |
| ■    | dir /og      | 文件夹优先                     |
|      | dir /p       | 输出完每一屏后暂停             |
|      | dir /q       | +文件所有者                    |
| ■■   | dir /s       | +子目录中的文件                |
|      | dir /x       | +旧格式文件名                  |
|      | dir /r(?)    | +文件的备用数据流              |
|      | dir /t(?)    | 控制显示或用来分类的时间字符域 |
|      | dir /4(?)    | 以四位数字显示年份             |

### 样式
#### 默认格式
```txt
E:\>dir
 驱动器 E 中的卷是 软件
 卷的序列号是 156B-84B9

 E:\ 的目录

2021/04/26 周一  16:19                12 1.txt
2021/04/26 周一  16:23    <DIR>          files
2021/04/26 周一  14:24    <DIR>          Program Files
2021/04/21 周三  08:59    <DIR>          Program Files (x86)
2021/04/21 周三  08:59    <DIR>          ProgramData
2021/03/31 周三  14:11    <DIR>          software
2021/04/21 周三  09:23    <DIR>          Windows Kits
               1 个文件             12 字节
               6 个目录 237,119,971,328 可用字节
```
#### 旧格式
```txt
E:\>dir /-n
 驱动器 E 中的卷是 软件
 卷的序列号是 156B-84B9

 E:\ 的目录

1        txt                 12 2021/04/26 周一  16:19
files         <DIR>             2021/04/26 周一  16:23
PROGRA~1      <DIR>             2021/04/26 周一  14:24
PROGRA~2      <DIR>             2021/04/21 周三  08:59
PROGRA~3      <DIR>             2021/04/21 周三  08:59
software      <DIR>             2021/03/31 周三  14:11
WINDOW~1      <DIR>             2021/04/21 周三  09:23
               1 个文件             12 字节
               6 个目录 237,119,971,328 可用字节
```
#### 空格式
```txt
E:\>dir/b
1.txt
files
Program Files
Program Files (x86)
ProgramData
software
Windows Kits
```
#### 宽格式，按行
```txt
E:\>dir /w
 驱动器 E 中的卷是 软件
 卷的序列号是 156B-84B9

 E:\ 的目录

1.txt                 [files]               [Program Files]       [Program Files (x86)] [ProgramData]
[software]            [Windows Kits]
               1 个文件             12 字节
               6 个目录 237,119,971,328 可用字节
```
#### 宽格式，按列
```txt
E:\>dir /d
 驱动器 E 中的卷是 软件
 卷的序列号是 156B-84B9

 E:\ 的目录

1.txt                 [Program Files]       [ProgramData]         [Windows Kits]
[files]               [Program Files (x86)] [software]
               1 个文件             12 字节
               6 个目录 237,119,971,328 可用字节
```

## tree 以图形显示驱动器或路径的文件夹结构
**格式：`tree [盘符:][路径] [/f] [/a]`**
### 命令
| 常用 | 命令    | 解释              |
| ---- | ------- | ----------------- |
| ■■   | tree    | 默认格式          |
| ■    | tree /a | 树枝使用ASCII字符 |
| ■■   | tree /f | 展示文件          |

### 样式
#### 默认格式
```txt
E:\a>tree
卷 软件 的文件夹 PATH 列表
卷序列号为 156B-84B9
E:.
└─新建文件夹
    └─bbb
```
#### 树枝使用ASCII字符
```txt
E:\a>tree /a
卷 软件 的文件夹 PATH 列表
卷序列号为 156B-84B9
E:.
\---新建文件夹
    \---bbb
```
#### 显示文件
```txt
E:\a>tree /f
卷 软件 的文件夹 PATH 列表
卷序列号为 156B-84B9
E:.
│  1.txt
│  2.txt
│
└─新建文件夹
    │  新建 Microsoft Excel 工作表.xlsx
    │
    └─bbb
            新建 Microsoft Visio 绘图.vsd
```
```txt
E:\a>tree /f /a
卷 软件 的文件夹 PATH 列表
卷序列号为 156B-84B9
E:.
|   1.txt
|   2.txt
|
\---新建文件夹
    |   新建 Microsoft Excel 工作表.xlsx
    |
    \---bbb
            新建 Microsoft Visio 绘图.vsd
```

## cmd 启动cmd的一个新实例
**格式：`cmd [/a | /u] [/q] [/d] [/e:on | /e:off] [/f:on | /f:off] [/v:on | /v:off] [[/s] [/c | /k] 字符串]`**
### 命令
| 常用 | 命令                             | 解释                                    |
| ---- | -------------------------------- | --------------------------------------- |
| ■    | start cmd                        | 打开新的实例                            |
| ■■   | start cmd /c pause               | 执行命令然后关闭这个实例                |
| ■■   | start cmd /k pause               | 执行命令但保留这个实例                  |
| ■■   | start cmd /k test.bat            | 执行批处理但保留这个实例                |
| ■    | start cmd /k test.exe            | 执行程序但保留这个实例                  |
| ■■   | start cmd /k "E:\a b c\test.bat" | 带空格                                  |
|      | start cmd /q                     | 关闭回显                                |
|      | start cmd /t:70                  | 设置字体和背景颜色                      |
|      | start cmd /d                     | 禁止从注册表执行AutoRun命令             |
|      | start cmd /a                     | 使向管道或文件的内部命令输出成为ANSI    |
|      | start cmd /u                     | 使向管道或文件的内部命令输出成为Unicode |
|      | start cmd /e                     | 启用/关闭命令扩展                       |
|      | start cmd /f                     | 启用/关闭文件和目录名完成字符           |
|      | start cmd /v                     | 启用/关闭!作为分隔符延迟的环境变量扩展  |

## start 启动一个单独的窗口以运行指定的程序或命令
**格式：`start ["标题"] [/d 路径] [/i] [/min] [/max] [/separate | /shared] [/low | /normal | /high | /realtime | /abovenormal | /belownormal] [/node <numa节点>] [/affinity <十六进制关联掩码>] [/wait] [/b] [命令或批处理/程序] [参数]`**
### 命令
| 常用 | 命令                                         | 解释                                             |
| ---- | -------------------------------------------- | ------------------------------------------------ |
| ■■   | start test.bat(同start cmd /k test.bat)      | 新实例执行命令或批处理                           |
| ■    | start test.exe                               | 新实例执行程序                                   |
| ■■   | start "测试" test.bat                        | 指定标题                                         |
| ■■   | start "" "E:\a b c\test.bat"                 | 路径带有空格(标题为空)                           |
| ■■   | start /d "E:\a b c\" test.bat                | 指定启动目录                                     |
|      | start /i test.bat                            | 打开新的实例，不继承父窗口变量                   |
| ■    | start /b test.bat                            | 本窗口打开新的实例                               |
|      | start /min test.bat                          | 以最小化方式启动窗口                             |
|      | start /max test.bat                          | 以最大化方式启动窗口                             |
| ■■   | start test.bat a b c                         | 传递参数                                         |
| ■■   | start test.bat a "b c" d                     | 参数有空格                                       |
| ■■   | start "" "E:\a b c\test.bat" 1 "2 3" 4(无效) | 路径和参数有空格                                 |
| ■■   | start /wait test.bat                         | 启动应用程序并等待它终止                         |
|      | start /separate test.bat                     | 在单独的内存空间中启动16位Windows程序            |
|      | start /shared test.bat                       | 在共享内存空间中启动16位Windows程序              |
|      | start /low test.bat                          | 在idle优先级类中启动应用程序                     |
|      | start /normal test.bat                       | 在normal优先级类中启动应用程序                   |
|      | start /high test.bat                         | 在high优先级类中启动应用程序                     |
|      | start /realtime test.bat                     | 在realtime优先级类中启动应用程序                 |
|      | start /abovenormal test.bat                  | 在abovenormal优先级类中启动应用程序              |
|      | start /belownormal test.bat                  | 在belownormal优先级类中启动应用程序              |
|      | start /node 123 test.bat(?)                  | 将首选非一致性内存结构(numa)节点指定为十进制整数 |
|      | start /affinity 123 test.bat(?)              | 将处理器关联掩码指定为十六进制数字               |

## call 调用程序或标签
**调用程序格式：`call [盘符:][路径]]文件名 [参数]`**  
**调用标签格式：`call:标签名`**  
### 命令
| 常用 | 命令          | 解释             |
| ---- | ------------- | ---------------- |
| ■■   | call test.bat | 调用test.bat程序 |
| ■■   | call:test     | 调用test标签     |

## shutdown 关机
**格式：`shutdown [/i | /l | /s | /sg | /r | /g | /a | /p | /h | /e | /o] [/hybrid] [/soft] [/fw] [/f] [/m \\指定目标计算机][/t 秒数][/d [p|u:]主要原因编号:次要原因编号 [/c "注释"]]`**
### 命令
| 常用 | 命令               | 解释                       |
| ---- | ------------------ | -------------------------- |
| ■    | shutdown /s        | 60秒后关机                 |
| ■■   | shutdown /r        | 重启                       |
| ■    | shutdown /h        | 休眠                       |
| ■    | shutdown /l        | 注销                       |
| ■■   | shutdown /t 100    | 100秒后关机                |
| ■    | shutdown /a        | 取消关机                   |
|      | shutdown /c "注释" | 注释                       |
|      | shutdown /i        | 图形化界面                 |
|      | shutdown /sg       | 重启，自动登录，重启程序   |
|      | shutdown /g        | 重启，自动登录             |
|      | shutdown /p        | 关机，没有超时或警告       |
|      | shutdown /hybrid   | 快速启动                   |
|      | shutdown /fw       | 下次启动转到BIOS           |
|      | shutdown /e        | 意外关闭的原因             |
|      | shutdown /o        | 重启并转到高级启动选项菜单 |
|      | shutdown /m \\\aaa | 指定目标计算机aaa          |
|      | shutdown /f        | 强制关闭程序，不警告用户   |
|      | shutdown /d        | 提供重新启动或关闭的原因   |

## sort 排序
**格式：`sort [/r] [/+n] [/m 千字节] [/l 区域] [/rec 记录字节数] [[盘符:][路径]文件名] [/t [盘符:][路径]] [/o [盘符:][路径]文件名]`**
### 命令
| 常用 | 命令                | 解释                     |
| ---- | ------------------- | ------------------------ |
| ■    | sort 1.txt          | 升序排序                 |
| ■■   | sort /r 1.txt       | 降序排序                 |
| ■    | sort /+3 1.txt      | 从第3个字符开始排序      |
| ■■   | sort 1.txt /o 2.txt | 排序后输出文件           |
|      | sort 1.txt /t       | 指定临时文件路径         |
|      | sort 1.txt /rec     | 指定记录中的最大字符数量 |
|      | sort 1.txt /l       | 指定区域                 |
|      | sort 1.txt /m       | 指定最大内存             |


## copy 将一份或多份文件复制到另一个位置
**格式：`copy [/d] [/v] [/n] [/y | /-y] [/z] [/l] [/a | /b ] 源 [/a | /b] [+ 源 [/a | /b] [+ ...]] [目的 [/a | /b]]`**
### 命令
| 常用 | 命令                   | 解释                                                           |
| ---- | ---------------------- | -------------------------------------------------------------- |
| ■■   | copy 1.txt 2.txt       | 复制1.txt为2.txt                                               |
|      | copy 1.txt+2.txt files | 合并1.txt和2.txt到files文件夹成1.txt                           |
|      | copy /a 1.txt 2.txt    | ASCII文件复制方式                                              |
|      | copy /b 1.exe 2.exe    | 二进制文件复制方式                                             |
| ■■   | copy /y 1.txt 2.txt    | 覆盖文件                                                       |
|      | copy /v 1.txt 2.txt    | 验证新文件写入是否正确                                         |
|      | copy /d(?)             | 允许解密要创建的目标文件                                       |
|      | copy /z(?)             | 用可重新启动模式复制已联网的文件                               |
|      | copy /l(?)             | 如果源是符号链接，请将链接复制到目标而不是源链接指向的实际文件 |
| ■■   | copy nul 1.txt         | 创建空文件                                                     |
| ■■   | copy con 2.txt         | 创建文件(手动输入内容，Ctrl+C结束)                             |

## xcopy 复制文件和目录树
格式：`xcopy 源 [目的] [/a | /m] [/d[:时间m-d-y格式]] [/p] [/s [/e]] [/v] [/w] [/c] [/i] [/q] [/f] [/l] [/g] [/h] [/r] [/t] [/u] [/k] [/n] [/o] [/x] [/y] [/-y] [/z] [/b] [/j] [/exclude:文件1[+文件2][+文件3]...] [/compress]`
### 命令
| 常用 | 命令                           | 解释                                           |
| ---- | ------------------------------ | ---------------------------------------------- |
|      | xcopy 1.txt 2.txt              | 复制1.txt，选择2.txt是文件还是文件夹           |
|      | xcopy a b                      | 复制a文件夹里的文件，选择2.txt是文件还是文件夹 |
| ■    | xcopy a b /i                   | 复制a文件夹里的文件到b文件夹                   |
| ■    | xcopy a b /s /i                | 复制文件和文件夹，不包括空文件夹               |
| ■■   | xcopy a b /e /i                | 复制文件和文件夹，包括空文件夹                 |
| ■    | xcopy a b /t /i                | 创建文件夹，不包括空目录                       |
| ■    | xcopy a b /t /e /i             | 创建文件夹，包括空目录                         |
|      | xcopy a b /i /p                | 创建每个目标文件之前均进行提示                 |
|      | xcopy a b /i /v                | 验证每个新文件的大小                           |
|      | xcopy a b /i /w                | 提示在复制前按键                               |
| ■    | xcopy a b /i /c                | 即使有错误，也继续复制                         |
|      | xcopy a b /i /q                | 复制时不显示文件名                             |
|      | xcopy a b /i /f                | 复制时显示完整的源文件名和目标文件名           |
|      | xcopy a b /i /l                | 显示要复制的文件                               |
| ■    | xcopy a b /i /r                | 覆盖只读文件                                   |
| ■    | xcopy a b /i /u                | 只复制已经存在于目标中的文件                   |
|      | xcopy a b /i /k                | 复制属性。一般的Xcopy会重置只读属性            |
|      | xcopy a b /i /n                | 用生成的短名称复制                             |
| ■■   | xcopy a b /i /y                | 覆盖文件                                       |
|      | xcopy a b /i /j                | 复制时不使用缓冲的I/O。推荐复制大文件时使用    |
|      | xcopy a b /i /compress         | 如果适用，在传输期间请求网络压缩               |
|      | xcopy a b /s /i /d(?)          | 复制源时间比目标时间新的文件                   |
|      | xcopy a b /s /i /d:4-27-2021   | 复制在指定日期或指定日期以后更改的文件         |
|      | xcopy a b /s /i /exclude:1.txt | 排除在a文件夹里1.txt含有的文件                 |
|      | xcopy a b /i /g(?)             | 允许将加密文件复制到不支持加密的目标           |
|      | xcopy a b /i /o(?)             | 复制文件所有权和ACL信息                        |
|      | xcopy a b /i /x(?)             | 复制文件审核设置(含/o)                         |
|      | xcopy a b /i /z(?)             | 在可重新启动模式下复制网络文件                 |
|      | xcopy a b /i /b(?)             | 复制符号链接本身与链接目标                     |

## del 删除一个或多个文件
**格式：`del [/p] [/f] [/s] [/q] [/a[[:]属性]] 文件名`**
### /a 属性
| 字段 | 含义           | 字段 | 含义           |
| ---- | -------------- | ---- | -------------- |
| r    | 只读文件       | s    | 系统文件       |
| h    | 隐藏文件       | a(?) | 准备存档的文件 |
| i(?) | 无内容索引文件 | l(?) | 重新分析点     |
| o(?) | 脱机文件       | -    | 表示“否”的前缀 |

### 命令
| 常用 | 命令              | 解释                            |
| ---- | ----------------- | ------------------------------- |
| ■■   | del 1.txt         | 删除1.txt，回收站找不到         |
| ■    | del *.txt         | 删除txt结尾的文件，不包括子目录 |
| ■■   | del /s *.txt      | 删除txt结尾的文件，包括子目录   |
|      | del /p 1.txt      | 提示确认                        |
| ■    | del /f 1.txt      | 强制删除只读文件                |
|      | del /q *.txt      | 不提示删除信息                  |
| ■    | del /a /ah *。txt | 删除隐藏文件                    |

## md 创建目录(文件夹)
**格式：`md [盘符:]路径(文件夹名)`**
### 命令
| 常用 | 命令     | 解释           |
| ---- | -------- | -------------- |
| ■■   | md a     | 创建a文件夹    |
| ■■   | md a\b\c | 创建多级文件夹 |

## rd 删除目录(文件夹)
**格式：`md [/s] [/q] [盘符:]路径(文件夹名)`**
### 命令
| 常用 | 命令       | 解释                        |
| ---- | ---------- | --------------------------- |
| ■    | rd a       | 删除a文件夹(必须为空文件夹) |
| ■■   | rd /s a    | 以及删除子文件和子文件夹    |
| ■■   | rd /s /q a | 不提示确认信息              |

## move 移动文件(剪切)并重命名文件和目录
**移动文件格式：`move [/y | /-y] [盘符:][路径]文件名[,...] 目标位置`**  
**重命名格式：`move [/y | /-y] [盘符:][路径]文件夹名 新文件夹名`**
### 命令
| 常用 | 命令               | 解释                   |
| ---- | ------------------ | ---------------------- |
| ■■   | move 1.txt b       | 移动1.txt文件到b文件夹 |
| ■■   | move /y 1.txt b    | 覆盖已存在的文件       |
| ■■   | move 1.txt b\2.txt | 移动并重命名文件       |
| ■■   | move b c           | 重命名文件夹           |

## replace 替换文件
**格式1：`replace [盘符:][路径]文件名 [盘符:][路径] [/a] [/p] [/r] [/w]`**
**格式2：`replace [盘符:][路径]文件名 [盘符:][路径] [/p] [/r] [/s] [/w] [/u]`**
### 命令
| 常用 | 命令               | 解释                                           |
| ---- | ------------------ | ---------------------------------------------- |
| ■    | replace 1.txt c /a | c文件夹中不存在1.txt才复制                     |
|      | replace 1.txt c /p | c文件夹中存在1.txt需要确认才替换               |
| ■■   | replace 1.txt c /s | c文件夹以及子文件夹中存在1.txt才替换           |
|      | replace 1.txt c /u | c文件夹以及子文件夹中存在1.txt并且日期早才替换 |
| ■    | replace 1.txt c /r | 只读文件和为保护文件也能替换                   |
|      | replace 1.txt c /w | 插入磁盘后再运行                               |

## ren 重命名文件
**格式：`ren [盘符:][路径]文件名 新文件名`**
### 命令
| 常用 | 命令            | 解释                             |
| ---- | --------------- | -------------------------------- |
| ■■   | ren 1.txt 2.txt | 重命名1.txt为2.txt(不能指定目录) |

## find 在文件中搜索字符串
**格式：`find [/v] [/c] [/n] [/i] [/off[line]] "字符串" [[盘符:][路径]文件名[ ...]]`**
### 命令
| 常用 | 命令                      | 解释                                        |
| ---- | ------------------------- | ------------------------------------------- |
| ■■   | find 1.txt "path"         | 在1.txt文件中搜索存在"path"字符串的行并显示 |
| ■■   | find 1.txt /v "path"      | 不存在                                      |
| ■■   | find 1.txt /c "path"      | 仅显示行数                                  |
| ■■   | find 1.txt /n "path"      | 显示行号                                    |
| ■■   | find 1.txt /i "path"      | 忽略大小写                                  |
|      | find 1.txt /off "path"(?) | 不要跳过具有脱机属性集的文件                |

## type 显示文本文件的内容
**格式：`type [盘符:][路径]文件名`**
### 命令
| 常用 | 命令           | 解释              |
| ---- | -------------- | ----------------- |
| ■■   | type 1.txt     | 显示1.txt文件内容 |
| ■■   | type nul>2.txt | 创建空文件        |

## more 逐屏显示输出
**格式：`more /e [/c] [/p] [/s] [/tn] [+n] [文件名]`**
### 命令
| 常用 | 命令             | 解释                      |
| ---- | ---------------- | ------------------------- |
| ■■   | more 1.txt       | 逐屏显示                  |
|      | more 1.txt 2.txt | 逐屏显示                  |
| ■    | more +3 1.txt    | 从第3行显示               |
|      | more /c 1.txt    | 逐屏显示前先cls           |
|      | more /s 1.txt    | 多个空行缩成一行          |
|      | more /t4 1.txt   | tab显示为4个空格(默认8个) |
|      | more /p 1.txt(?) | 扩展FormFeed字符          |

### 出现More提示时可接受的命令
| 常用 | 命令 | 解释           |
| ---- | ---- | -------------- |
|      | p3   | 显示下3行      |
|      | s3   | 跳过下3行      |
|      | f    | 显示下一个文件 |
| ■■   | q    | 退出           |
| ■    | =    | 显示行号       |
|      | ?    | 显示帮助       |
| ■■   | 空格 | 显示下一页     |
| ■    | 回车 | 显示下一行     |

## findstr 在文件中寻找字符串
**格式：`findstr [/b] [/e] [/l] [/r] [/s] [/i] [/x] [/v] [/n] [/m] [/o] [/p] [/f:指定文件列表的文件] [/c:字符串] [/g:指定要搜索字符串的文件] [/d:要查找目录列表(分号为分隔符)] [/a:颜色代码] [/off[line]] "字符串" [[盘符:][路径]文件名[ ...]]`**
### 命令
| 常用 | 命令                          | 解释                                               |
| ---- | ----------------------------- | -------------------------------------------------- |
| ■■   | findstr "path" 1.txt          | 在1.txt文件中搜索存在"path"字符串的行并显示        |
| ■■   | findstr "path ren" 1.txt      | 在1.txt文件中搜索存在"path"或"ren"字符串的行并显示 |
| ■■   | findstr /c:"path ren" 1.txt   | 在1.txt文件中搜索存在"path ren"字符串的行并显示    |
| ■■   | findstr /c:"path\\\\" 1.txt   | 搜索存在"path\\"字符串，结尾是单\需要变成双\       |
| ■■   | findstr /v "path" 1.txt       | 不存在                                             |
| ■    | findstr /n "path" 1.txt       | 显示行号                                           |
| ■■   | findstr /i "path" 1.txt       | 忽略大小写                                         |
|      | findstr /off "path" 1.txt(?)  | 不要跳过具有脱机属性集的文件                       |
| ■    | findstr /b "path" 1.txt       | 每行的首部是"path"字符串                           |
| ■    | findstr /e "path" 1.txt       | 每行的结尾是"path"字符串                           |
| ■■   | findstr /r "表达式" 1.txt     | 将搜索字符串作为一般表达式使用                     |
|      | findstr /l "path" 1.txt(?)    | 按字使用搜索字符串                                 |
| ■    | findstr /s "path" 1.txt       | 包含子目录                                         |
| ■    | findstr /m "path" 1.txt       | 如果有匹配只打印文件名                             |
| ■    | findstr /o "path" 1.txt       | 显示偏移量                                         |
|      | findstr /p "path" 1.txt       | 忽略有不可打印字符的文件                           |
|      | findstr /a:12 "path" 1.txt(?) | 指定有十六进位数字的颜色属性                       |
| ■    | findstr /f:2.txt "path" 1.txt | 从指定文件读文件列表(/代表控制台)                  |
| ■    | findstr /g:2.txt "path" 1.txt | 从指定的文件获得搜索字符串(/代表控制台)            |
|      | findstr /d:a;b "path" 1.txt   | 要查找目录列表(分号为分隔符)                       |

## tasklist 显示在本地或远程机器上当前运行的进程列表
**格式：`tasklist [/s 远程系统地址 [/u 用户名 [/p [密码]]]] [/m [模块] | /svc | /v] [/fi 过滤器] [/fo 输出格式] [/nh]`**
### 命令
| 常用 | 命令                                  | 解释                                   |
| ---- | ------------------------------------- | -------------------------------------- |
| ■    | tasklist                              | 显示进程列表                           |
|      | tasklist /s 1.2.3.4 /u admin /p admin | 显示远程系统进程列表                   |
|      | tasklist /m >1.txt                    | 显示进程列表和加载的模块               |
|      | tasklist /svc >1.txt                  | 显示进程列表和主持的服务               |
|      | tasklist /apps                        | 显示Microsoft Store应用及其关联的进程  |
|      | tasklist /v >1.txt                    | 显示详细任务信息                       |
|      | tasklist /fo scv                      | 指定输出格式(有table[默认]，list，csv) |
|      | tasklist /nh                          | 不显示标题(table，csv有效)             |
| ■■   | tasklist /fi "imagename eq code.exe"  | 显示程序名为code.exe的进程信息         |
| ■■   | tasklist /fi "pid eq 11100"           | 显示pid为11100的进程信息               |

### /fi 过滤器
| 常用 | 命令        | 有效运算符             | 有效值                                   |
| ---- | ----------- | ---------------------- | ---------------------------------------- |
|      | status      | eq, ne                 | running,suspended,not responding,unknown |
| ■■   | imagename   | eq, ne                 | 映像名称                                 |
| ■■   | pid         | eq, ne, gt, lt, ge, le | pid值                                    |
|      | session     | eq, ne, gt, lt, ge, le | 会话编号                                 |
|      | sessionname | eq, ne                 | 会话名称                                 |
|      | cputime     | eq, ne, gt, lt, ge, le | cpu时间：格式为hh:mm:ss                  |
|      | memusage    | eq, ne, gt, lt, ge, le | 内存使用(以kb为单位)                     |
|      | username    | eq, ne                 | 用户名：格式为[域\]用户                  |
|      | services    | eq, ne                 | 服务名称                                 |
|      | windowtitle | eq, ne                 | 窗口标题                                 |
|      | 模块        | eq, ne                 | dll名称                                  |

## taskkill 使用该工具按照进程ID(PID)或映像名称终止任务
**格式：`taskkill [/s 远程系统地址 [/u 用户名 [/p [密码]]]] { [/fi 过滤器] [/pid pid | /im 程序名] } [/t] [/f]`**
### 命令
| 常用 | 命令                                               | 解释                                     |
| ---- | -------------------------------------------------- | ---------------------------------------- |
|      | taskkill /s 1.2.3.4 /u admin /p admin /pid 1234 /f | 结束远程系统进程                         |
| ■■   | taskkill /im code.exe /f                           | 结束程序名为code.exe的进程               |
| ■■   | taskkill /im code.exe /t /f                        | 结束程序名为code.exe的进程以及它的子进程 |
| ■■   | taskkill /pid 11100 /f                             | 结束pid为11100的进程                     |
|      | taskkill /fi "imagename eq code.* " /f             | 结束程序名为code.*的进程                 |

### /fi 过滤器
| 常用 | 命令        | 有效运算符             | 有效值                         |
| ---- | ----------- | ---------------------- | ------------------------------ |
|      | status      | eq, ne                 | running,not responding,unknown |
| ■■   | imagename   | eq, ne                 | 映像名称                       |
| ■■   | pid         | eq, ne, gt, lt, ge, le | pid值                          |
|      | session     | eq, ne, gt, lt, ge, le | 会话编号                       |
|      | cputime     | eq, ne, gt, lt, ge, le | cpu时间：格式为hh:mm:ss        |
|      | memusage    | eq, ne, gt, lt, ge, le | 内存使用(以kb为单位)           |
|      | username    | eq, ne                 | 用户名：格式为[域\]用户        |
|      | modules     | eq, ne                 | dll名称                        |
|      | services    | eq, ne                 | 服务名称                       |
|      | windowtitle | eq, ne                 | 窗口标题                       |

## if-else 执行批处理程序中的条件处理
**错误层次判断格式：`if [not] errorlevel 错误层次 要执行的命令`**  
**字符串相等判断格式：`if [/i] [not] "字符串1"=="字符串2" 要执行的命令`**  
**文件是否存在判断格式：`if [not] exist 文件名 要执行的命令`**  
**字符串比较判断格式：`if [/i] "字符串1" 运算符 "字符串2" 要执行的命令`**  
**命令拓展版本号比较判断格式：`if cmdextversion 命令拓展版本号 要执行的命令`**  
**变量是否定义判断格式：`if defined 变量名 要执行的命令`**
### 命令
| 常用 | 命令                                             | 解释                             |
| ---- | ------------------------------------------------ | -------------------------------- |
| ■■   | if 1==1 (echo true) else (echo false)            | true,数字是否相等                |
| ■    | if not 1==2 (echo true) else (echo false)        | true,是否不相等                  |
| ■■   | if "a"=="a" (echo true) else (echo false)        | true,字符串是否相等              |
| ■    | if /i "a"=="A" (echo true) else (echo false)     | true,字符串不区分大小写          |
| ■■   | if %a%==%a% (echo true) else (echo false)        | true,变量是否相等                |
| ■■   | if exist test.bat (echo true) else (echo false)  | true,文件是否存在                |
| ■■   | if defined a (echo true) else (echo false)       | false,变量是否定义               |
| ■■   | if 1 lss 2 (echo true) else (echo false)         | true,数字大小                    |
| ■■   | if "a" gtr "b" (echo true) else (echo false)     | false,字符串大小                 |
| ■■   | if errorlevel 1 (echo true) else (echo false)    | false,错误层次是否大于等于1      |
|      | if cmdextversion 1 (echo true) else (echo false) | true,命令拓展版本号是否大于等于1 |
|      | if ^"==^" (echo true) else (echo false)          | true,引号是否相等                |

### 运算符
| 常用 | 运算符 | 解释 |
| ---- | ------ | ---- |
| ■■   | equ    | ==   |
| ■■   | neq    | !=   |
| ■■   | gtr    | >    |
| ■■   | geq    | >=   |
| ■■   | lss    | <    |
| ■■   | leq    | <=   |

## for 对一组文件中的每一个文件执行某个特定命令
**遍历文件格式：`for %变量名 in (文件) do 要执行的命令 [参数]`**  
**遍历文件夹格式：`for /d %变量名 in (文件) do 要执行的命令 [参数]`**  
**遍历目录格式：`for /r [[盘符:]路径] %变量名 in (文件) do 要执行的命令 [参数]`**  
**遍历增量格式：`for /l %变量名 in (开始,增量,结束) do 要执行的命令 [参数]`**  
**遍历文件内容格式：`for /f ["选项"] %变量名 in (文件) do 要执行的命令 [参数]`**  
**遍历字符串格式：`for /f ["选项"] %变量名 in ("字符串") do 要执行的命令 [参数]`**  
**遍历命令格式：`for /f ["选项"] %变量名 in ('命令') do 要执行的命令 [参数]`**
### 命令
| 常用 | 命令                                                                | 解释                                     |
| ---- | ------------------------------------------------------------------- | ---------------------------------------- |
| ■■   | for %a in (*) do @echo %a                                           | 遍历所有文件并打印                       |
|      |                                                                     | (变量名为一个字母，区分大小写)           |
| ■■   | for %%a in (*) do @echo %%a                                         | bat中写法，变量名需要是双%               |
| ■■   | for %a in (*.txt) do @echo %a                                       | 遍历所有txt结尾的文件并打印              |
| ■    | for %a in (1 2 ab) do @echo %a                                      | 遍历指定字符串                           |
| ■■   | for /d %a in (*) do @echo %a                                        | 遍历文件夹                               |
| ■■   | for /d %a in ('echo %v%') do @echo %a                               | 遍历v变量                                |
| ■■   | for /r a %a in (*) do @echo %a                                      | 遍历a文件夹里的文件和文件夹              |
| ■■   | for /l %a in (1,2,11) do @echo %a                                   | 遍历1-11数字，增量为2，包括首尾数字      |
| ■■   | for /f "tokens=1,3-4* delims=, " %i in (1.txt) do @echo %i %j %k %l | 单词以,分隔，读取1,3-4和剩余单词，并输出 |
| ■■   | for /f "usebackq" %i in ("a a a.txt") do @echo %i                   | 文件名带空格                             |
| ■    | for /f "tokens=2-3 delims=, " %a in ("a b,c d") do @echo %a %b      | 分析字符串                               |
| ■■   | for /f %i in ('dir /b') do @echo %i                                 | 分析命令                                 |
|      | for /f "usebackq" %i in (`dir /b`) do @echo %i                      | 分析命令                                 |

### 选项
| 常用 | 选项     | 解释                                        | 示例          | 解释                                 |
| ---- | -------- | ------------------------------------------- | ------------- | ------------------------------------ |
|      | eol      | 忽略注释的行(一个字符)                      | eol=;         | 忽略;开头的行                        |
|      | skip     | 跳过前多少行                                | skip=3        | 跳过前3行                            |
| ■■   | delims   | 分隔符集(文件包括空格和tab，字符串包括空格) | delims=,;     | 以,和;为单词分隔符                   |
| ■■   | tokens   | 单词传递给变量                              | tokens=1,3-4* | 读取1，3-4和剩余单词并赋值给do后变量 |
|      |          |                                             |               | (in前变量为起始，变量名递增赋值)     |
|      | usebackq | 指定in()括号里带引号的字符串为文件名        |               |                                      |

### 拓展变量增强
| 常用 | 命令        | 解释                                                                 |
| ---- | ----------- | -------------------------------------------------------------------- |
| ■    | %~I         | 删除任何引号(")扩展%I                                                |
| ■■   | %~fI        | 将%I扩展到一个完全合格的路径名                                       |
| ■    | %~dI        | 仅将%I扩展到一个驱动器号                                             |
| ■    | %~pI        | 仅将%I扩展到一个路径                                                 |
| ■    | %~nI        | 仅将%I扩展到一个文件名                                               |
| ■    | %~xI        | 仅将%I扩展到一个文件扩展名                                           |
|      | %~sI        | 扩展的路径只含有短名                                                 |
|      | %~aI        | 将%I扩展到文件的文件属性                                             |
|      | %~tI        | 将%I扩展到文件的日期/时间                                            |
|      | %~zI        | 将%I扩展到文件的大小                                                 |
|      | %~$PATH:I   | 查找列在路径环境变量的目录，并将%I扩展到找到的第一个完全合格的名称。 |
|      |             | 如果环境变量名未被定义，或者没有找到文件，此组合键会扩展到空字符串   |
| ■■   | %~dpI       | 仅将%I扩展到一个驱动器号和路径                                       |
| ■■   | %~nxI       | 仅将%I扩展到一个文件名和扩展名                                       |
|      | %~fsI       | 仅将%I扩展到一个带有短名的完整路径名                                 |
|      | %~dp$PATH:I | 搜索列在路径环境变量的目录，并将%I扩展到找到的第一个驱动器号和路径。 |
|      | %~ftzaI     | 将%I扩展到类似输出线路的dir                                          |

例如：`%%~na`为变量a的文件名

## ansi.sys 控制字符输出
详细说明： https://docs.microsoft.com/zh-cn/windows/console/console-virtual-terminal-sequences  
使用前缀`[`作为ansi输出，ESC转义输入方法：在cmd界面按Ctrl+[或在bat中替换一个字符为(0x1b)  
使用示例：`echo [36;43m设置字体青色背景黄色`  
| 命令     | 解释                                      |
| -------- | ----------------------------------------- |
| [0m     | 无属性                                    |
| [1m     | 粗体(vs code有效，cmd字体颜色变亮)        |
| [2m     | 未知(无效)                                |
| [3m     | 斜体(高版本电脑系统在vs code有效)         |
| [4m     | 下划线(cmd有效)                           |
| [5m     | 闪烁(无效)                                |
| [7m     | 反色                                      |
| [8m     | 不显示不显示(高版本电脑系统在vs code有效) |
| [0m     | 无属性                                    |
| [30m    | 字体黑色                                  |
| [31m    | 字体红色                                  |
| [32m    | 字体绿色                                  |
| [33m    | 字体黄色                                  |
| [34m    | 字体蓝色                                  |
| [35m    | 字体紫红色                                |
| [36m    | 字体青色                                  |
| [37m    | 字体白色                                  |
| [40m    | 背景黑色                                  |
| [41m    | 背景红色                                  |
| [42m    | 背景绿色                                  |
| [43m    | 背景黄色                                  |
| [44m    | 背景蓝色                                  |
| [45m    | 背景紫红色                                |
| [46m    | 背景青色                                  |
| [47m    | 背景白色                                  |
| [36;43m | 字体青色背景黄色                          |
| [3;20H  | 输出到3行20列                             |
| [25;30f | 输出到25行30列                            |

# 外部命令
## 常用命令
| 常用 | 命令     | 作用     |
| ---- | -------- | -------- |
| ■■   | choice   | 选项     |
| ■■   | reg      | 注册表   |
| ■■   | netstat  | 网络     |
| ■    | schtasks | 计划任务 |

## choice 允许用户从选择列表选择一个项目并返回所选项目的索引
**格式：`choice [/c 选项列表] [/n] [/cs] [/t 超时 /d 默认选项] [/m 提示文本]`**
### 命令
| 常用 | 命令                                      | 解释                 |
| ---- | ----------------------------------------- | -------------------- |
|      | choice /c abcd                            | 选项abcd             |
| ■■   | choice /c abcd /m "请做出选择"            | 选项abcd显示提示文本 |
|      | choice /c abcd /n /m "请做出选择"         | 不提示选项           |
| ■    | choice /c abAB /cs /m "请做出选择"        | 区分大小写           |
| ■■   | choice /c abcd /t 10 /d a /m "请做出选择" | 超时10秒默认选a      |

### 代码和输出
#### 仅选项
代码
```bat
@echo off
choice /c abcd
echo %errorlevel%
```
输出
```txt
E:\>test.bat
[A,B,C,D]?B
2
```
#### 选项和提示
代码
```bat
@echo off
choice /c abcd /m "请做出选择"
echo %errorlevel%
```
输出
```txt
E:\>test.bat
请做出选择 [A,B,C,D]?A
1
```
#### 仅提示
代码
```bat
@echo off
choice /c abcd /n /m "请做出选择"
echo %errorlevel%
```
输出
```txt
E:\>test.bat
请做出选择 C
3
```

## reg 注册表操作
**新增格式：`reg add 路径 [/v 名称 | /ve] [/t 类型] [/s 分隔符] [/d 值] [/f] [/reg:32 | /reg:64]`**  
**删除格式：`reg delete 路径 [/v 名称 | /ve | /va] [/f] [/reg:32 | /reg:64]`**  
**查询格式：`reg query 路径 [/v [名称] | /ve] [/s] [/f 值 [/k] [/d] [/c] [/e]] [/t 类型] [/z] [/se 分隔符] [/reg:32 | /reg:64]`**  
**导入格式：`reg import 文件名[/reg:32 | /reg:64]`**  
**导出格式：`reg export 路径 文件名 [/y] [/reg:32 | /reg:64]`**  
**加载格式：`reg load 路径 文件名 [/reg:32 | /reg:64]`**  
**卸载格式：`reg unload 路径`**  
**复制格式：`reg copy 路径1 路径2 [/s] [/f] [/reg:32 | /reg:64]`**  
**保存格式：`reg save 路径 文件名 [/y] [/reg:32 | /reg:64]`**  
**比较格式：`reg compare 路径1 路径2 [/v 名称 | /ve] [output] [/s] [/reg:32 | /reg:64]`**  
**还原格式：`reg restore 路径 文件名 [/reg:32 | /reg:64]`**  
**标志格式：`reg flags 路径 [query | set [dont_virtualize] [dont_silent_fail] [recurse_flag]] [/reg:32 | /reg:64]`**
### 路径 
**格式：`[\\远程机器名\]根路径\子路径`**
| 名称 | 名称 |
| ---- | ---- |
| HKLM | HKU  |
| HKCU | HKCC |
| HKCR |      |

### /t 类型
| 常用 | 名称          | 解释           |
| ---- | ------------- | -------------- |
| ■■   | REG_SZ        | 字符串值(默认) |
|      | REG_MULTI_SZ  | 多字符串值     |
|      | REG_EXPAND_SZ | 可扩充字符串值 |
|      | REG_DWORD     | DWord(32位)值  |
|      | REG_QWORD     | QWord(64位)值  |
|      | REG_BINARY    | 二进制值       |
|      | REG_NONE      | (?)            |

### 命令
| 常用 | 命令                                 | 解释 |
| ---- | ------------------------------------ | ---- |
| ■■   | reg add 路径 /v 名称 /t REG_SZ /d 值 | 新增 |
| ■■   | reg delete 路径 /v 名称 /f           | 删除 |
| ■    | reg query 路径                       | 查询 |
|      | reg import 导入路径                  | 导入 |
|      | reg export 路径 导出路径             | 导出 |

## netstat 显示协议统计信息和当前TCP/IP网络连接
**格式：`netstat [-a] [-b] [-e] [-f] [-n] [-o] [-p 指定协议] [-r] [-s] [-t] [-x] [-y] [刷新间隔]`**
### -p 指定协议
| 名称 | 名称  |
| ---- | ----- |
| TCP  | TCPv6 |
| UDP  | UDPv6 |

### -p 指定协议 -s
| 名称   | 名称  |
| ------ | ----- |
| IP     | TCP   |
| IPv6   | UDP   |
| ICMP   | TCPv6 |
| ICMPv6 | UDPv6 |

### 命令
| 常用 | 命令         | 解释                                              |
| ---- | ------------ | ------------------------------------------------- |
| ■■   | netstat -ano | 显示活动连接的协议、本机地址、外部地址、状态、PID |

## schtasks 允许管理员创建、删除、查询、更改、运行和中止本地或远程系统上的计划任务
**新增格式：`schtasks /create [/s 远程系统地址 [/u 用户名 [/p [密码]]]] [/ru 计算机用户 [/rp 计算机用户密码]] /sc 计划频率 [/mo 计划类型] [/d 日] [/m 月] [/i 执行前等待时间] /tn 名称 /tr 要运行的程序 [/st 开始时间] [/ri 重复间隔] [ {/et 结束时间 | /du 持续时间} [/k] [/xml xml中创建任务] [/v1]] [/sd 第一次运行日期] [/ed 最后一次运行日期] [/it | /np] [/z] [/f] [/退出代码]`**
**删除格式：`schtasks /delete [/s 远程系统地址 [/u 用户名 [/p [密码]]]] /tn 名称 [/f] [/退出代码]`**
**修改格式：`schtasks /change [/s 远程系统地址 [/u 用户名 [/p [密码]]]] /tn 名称 { [/ru 计算机用户] [/rp 计算机用户密码] [/tr 要运行的程序] [/st 开始时间] [/ri 重复间隔] [ {/et 结束时间 | /du 持续时间} [/k] ] [/sd 第一次运行日期] [/ed 最后一次运行日期] [/enable | /disable] [/it] [/z] } [/退出代码]`**
**查询格式：`schtasks /query [/s 远程系统地址 [/u 用户名 [/p [密码]]]] [/fo 输出格式 | /xml [xml类型]] [/nh] [/v] [/tn 名称] [/退出代码]`**
**运行格式：`schtasks /run [/s 远程系统地址 [/u 用户名 [/p [密码]]]] [/i] /tn 名称 [/退出代码]`**
**停止格式：`schtasks /end [/s 远程系统地址 [/u 用户名 [/p [密码]]]] /tn 名称 [/退出代码]`**
**显示sid格式：`schtasks /showsid /tn 名称 [/退出代码]`**
### /sc 计划频率 /mo计划类型
| 名称    | 含义                                             | 名称    | 含义                              |
| ------- | ------------------------------------------------ | ------- | --------------------------------- |
| minute  | 分钟：1-1439                                     | once    | 一次                              |
| hourly  | 小时：1-23                                       | onstart | 计算机启动时                      |
| daily   | 天：1-365                                        | onlogon | 用户登录时                        |
| weekly  | 周：1-52                                         | onidle  | 空闲时                            |
| monthly | 月：1-12或first/second/third/fourth/last/lastday | onevent | 事件被记录时：xpath事件查询字符串 |

### /d 日
| 名称 | 含义 | 名称 | 含义           |
| ---- | ---- | ---- | -------------- |
| mon  | 周一 | sat  | 周六           |
| tue  | 周二 | sun  | 周日           |
| wed  | 周三 | 1-31 | 指定月的哪一天 |
| thu  | 周四 | *    | 所有           |
| fri  | 周五 |      |                |

### /m 月
| 名称 | 含义 | 名称 | 含义   |
| ---- | ---- | ---- | ------ |
| jan  | 一月 | aug  | 八月   |
| feb  | 二月 | sep  | 九月   |
| mar  | 三月 | oct  | 四月   |
| apr  | 四月 | nov  | 十一月 |
| may  | 五月 | dec  | 十二月 |
| jun  | 六月 | *    | 所有   |
| jul  | 七月 |      |        |

### 命令
| 常用 | 命令                                                       | 解释                                     |
| ---- | ---------------------------------------------------------- | ---------------------------------------- |
| ■■   | schtasks /create /sc minute /mo 2 /tn test /tr notepad.exe | 创建任务test，每2分钟执行一次notepad.exe |
| ■■   | schtasks /change /tn test /disable                         | 禁用任务test                             |
| ■■   | schtasks /delete /tn test                                  | 删除任务test                             |
| ■■   | schtasks /query /tn test                                   | 查询任务test的详细信息                   |
| ■    | schtasks /run /tn test                                     | 手动调用任务test                         |
| ■    | schtasks /end /tn test                                     | 手动终止任务test                         |
|      | schtasks /showsid /tn test                                 | 显示任务test的sid                        |

# 内部程序
| 常用 | 命令         | 作用            |
| ---- | ------------ | --------------- |
| ■■   | cmd          | 命令提示符      |
| ■■   | explorer     | 资源管理器      |
| ■■   | taskmgr      | 任务管理器      |
| ■■   | mstsc        | 远程桌面        |
| ■    | regedit      | 注册表          |
| ■    | services.msc | 服务            |
| ■    | taskschd.msc | 计划任务        |
| ■    | control      | 控制面板        |
| ■    | notepad      | 记事本          |
| ■    | calc         | 计算器          |
| ■    | mspaint      | 画图            |
|      | write        | 写字板          |
|      | osk          | 屏幕键盘        |
|      | magnify      | 放大镜          |
|      | narrator     | 讲述人          |
|      | eudcedit     | 造字            |
|      | charmap      | 字符映射表      |
|      | dxdiag       | DirectX诊断工具 |
|      | perfmon      | 性能监测        |
|      | cleanmgr     | 磁盘清理        |
|      | msconfig     | 系统配置管理    |
|      | compmgmt     | 计算机管理      |
|      | devmgmt      | 设备管理器      |
|      | diskmgmt     | 磁盘管理        |
|      | lusrmgr      | 组和用户管理    |
|      | shrpubw      | 创建共享文件夹  |
|      | fsmgmt       | 共享文件夹管理  |
|      | winver       | 关于"Windows"   |

# 常用bat程序
目录：[example](example/)  
注意：所有代码，都需要保存编码为`UTF8`的文件  
**乱码解决方法**  
bat文本编码保存为`UTF8`，设置字符集编码为`65001`。  
echo命令不能连续输出2行中文(可以换行隔开)。  
例如：
```bat
@echo off
for /f "delims=: tokens=1,2" %%i in ('chcp') do ( if not "%%j"==" 65001" ( chcp 65001 & cls ) )

echo 中文+English

echo 中文第二行，换行隔开
echo.
echo 中文第3行，命令隔开
```
