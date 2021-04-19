# 基本语法
- @命令 ->本行命令不打印
- echo off ->关闭打印
- @echo off ->本行命令不打印并且关闭打印
- rem或:: 注释内容 ->注释
- exit ->退出
- cls ->清空缓冲区
- pause ->暂停
- goto 标签 ->跳转到标签处
- :标签 ->goto可以跳转到的地方
- type 文件名 ->查询查看文本文件内容
- 命令 /? ->查看帮助信息
- chcp 65001 ->切换字符集到UTF-8
- title 标题 ->修改左上角标题
- mode 列,宽 ->设置显示窗口大小(默认mode 120,30)
- color 背景颜色代码，字体颜色代码(默认color 07)
- telnet 网站/IP 端口号 ->判断端口是否开放

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

# 重定向
- &gt; 文件名 ->把输出内容覆盖重定向到指定文件
- &gt;&gt; 文件名 ->把输出内容追加重定向到指定文件
- &lt; 文件名 ->把文件内容重定向到窗口中
- 命令 2&gt; 文件名 ->把错误信息重定向到指定文件(0键盘输入，1输出到窗口，2错误输出)

# 特殊字符
- a | b ->将a的结果作为b的参数。例如：dir c:\ | find "w" 会打印c盘中含有w字符串的文件或文件夹
- a & b ->执行2条命令，即使a执行失败。例如：dir a:\ & dir c:\ 会打印找不到a盘，打印c盘的文件和文件夹
- a && b ->a执行失败，b不执行。例如：dir a:\ && dir c:\ 会打印找不到a盘
- a || b ->a执行失败，b才执行。例如：dir a:\ || dir c:\ 会打印找不到a盘，打印c盘的文件和文件夹
- a && b || c ->等价于if(a) b else c，即a执行成功，b执行，失败c执行。例如：dir c:\ && echo ok || echo error 会打印c盘的文件和文件夹，打印ok

# set 设置变量
- set ->显示系统默认变量
- set 变量名=值 ->设置变量
- set 变量名 ->打印变量名和值
- set 变量名= ->删除变量
- set /a 表达式(例如1+2) ->计算表达式
- set /a 变量名=表达式 ->计算表达式并赋值到变量
- set /p 变量名= ->接收用户输入
- set /p 变量名=描述信息 ->有描述信息的接收用户输入

# echo 打印
- echo 字符串 ->打印字符串
- echo %变量名% ->打印变量

# if 判断
- if exist 文件/文件夹 a else b ->判断是否存在文件/文件夹，是执行a，否执行b
- if not exist 文件/文件夹 a else b ->判断是否不存在文件/文件夹，是执行a，否执行b
- if "字符串1"=="字符串2" a else b ->判断2个字符串是否相等，是执行a，否执行b
- if %变量1%==%变量2% a else b ->判断2个变量是否相等，是执行a，否执行b
- if /i "字符串1"=="字符串2" a else b ->判断2个字符串是否相等(不区分大小写)，是执行a，否执行b
- if defined 变量名 a else b ->判断变量是否被赋值，是执行a，否执行b
- if 数值1 equ/neq/gtr/geq/lss/leq 数值2 a else b ->判断数值1是否相等/不相等/大于/大于等于/小于/小于等于数值2，是执行a，否执行b

# for 循环
- for %变量名 in(遍历的文件或文件夹，可以使用通配符) do 命令 ->(注意：在dos下变量使用一个%，在bat文件中使用2个%)
- for %i in(1 2 3) do echo %i ->打印1,2,3
- for %i in(a b c) do echo %i ->打印a,b,c
- for %i in(路径\字符串*) do echo %i ->找到路径下所有以指定字符串开头的文件并打印
- for %i in(路径\*.txt) do echo %i ->找到路径下的所有以txt结尾的文件并打印
- for /l %i in(起始值,步长,结束值) do echo %i ->例如in(1,1,5)则打印1,2,3,4,5
- for /d %i in(路径*) do echo %i ->打印路径下所有文件夹
- for /r 路径 %i in (*.txt) do echo %i ->找到路径下的所有以txt结尾的文件并打印

# start 启动
- start 盘符/文件夹/文件/程序/网站 ->新窗口打开
- start /max 字符串 ->最大化方式打开
- start /min 字符串 ->最小化方式打开
- start "" "D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe" ->打开带有空格的文件

# call 引用
- call 文件名 ->调用另一个程序

# sort 排序
- sort 文件名 ->对每一行字符串进行升序排序
- sort /r 文件名 ->对每一行字符串进行降序排序
- sort /+n 文件名 ->从第n个字符开始排序
- sort 文件名 /o 要输出的文件名 ->排序后输出文件

# shutdown 关机
- shutdown /s ->60秒后关机
- shutdown /r ->重启
- shutdown /h ->休眠
- shutdown /l ->注销
- shutdown /t n ->n秒后关机
- shutdown /a ->取消关机

# reg 注册表
- regedit ->打开图形化界面
- reg add 路径 /v 名称 /t REG_SZ /d 值 /f ->新增
- reg delete 路径 /v 名称 /f ->删除
- reg query 路径 ->查询
- reg export 路径 导出路径 ->导出
- reg import 导入路径 ->导入

# 开机启动
- reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v qq /t REG_SZ /d "D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe" /f ->新增启动项(此用户)
- reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v qq /t REG_SZ /d "D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe" /f ->新增启动项(所有用户，需要管理员权限)
- C:\Users\用户名\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup ->启动项目录(此用户)
- C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp ->启动项目录(所有用户，需要管理员权限)

# 查询端口号占用情况并杀死进程
- netstat -ano ->显示活动连接的协议、本机地址、外部地址、状态、PID
- netstat -ano | findstr 端口号 ->查询端口号占用情况
- taskmgr ->打开任务管理器界面
- tasklist ->查显示所有进程的进程名、PID等
- tasklist | findstr 进程PID ->查询该PID的进程信息
- taskkill /pid 进程PID /f ->杀死进程
- taskkill /im 进程名 /f ->杀死进程