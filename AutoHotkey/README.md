# AutoHotkey

- 帮助文档<https://wyagd001.github.io/v2/docs/index.htm>
- 文档下载<https://github.com/wyagd001/wyagd001.github.io>

## 热键

### 修饰符

| 符号 | 描述                             |
| ---- | -------------------------------- |
| ^    | `Ctrl`键                         |
| +    | `Alt`键                          |
| !    | `Shift`键                        |
| #    | `Win`键                          |
| &    | 组合热键连接符(仅支持2组热键)    |
| <    | 成对按键左侧按键                 |
| >    | 成对按键由侧按键                 |
| <^>! | `AltGr`键(美式标准键盘没有)      |
| *    | 通配符                           |
| ~    | 保留原按键功能                   |
| $    | 阻止Send方法调用热键             |
| UP   | 释放按键时触发热键，而不是按下时 |

### 鼠标

| 名称       | 描述                   |
| ---------- | ---------------------- |
| LButton    | 左键                   |
| RButton    | 右键                   |
| MButton    | 中键                   |
| XButton1   | 第四个按键             |
| XButton2   | 第五个按键             |
| WheelDown  | 向下转动鼠标滚轮       |
| WheelUp    | 向上转动鼠标滚轮       |
| WheelLeft  | 向左或向右转动鼠标滚轮 |
| WheelRight |                        |

### 键盘

| 名称              | 描述                                    |
| ----------------- | --------------------------------------- |
| a - z             | 字母`A`-`Z`                             |
| 0 - 9             | 数字`0`-`9`                             |
| `-=[]\;',./       | 符号`` `-=[]\;',./ ``                   |
| F1 - F24          | 功能键`F1`-`F24`                        |
| Control / Ctrl    | `Ctrl`键，同`^`                         |
| LControl / LCtrl  | 左`Ctrl`键，同`<^`                      |
| RControl / RCtrl  | 右`Ctrl`键，同`>^`                      |
| Alt               | `Alt`键，同`!`                          |
| LAlt              | 左`Alt`键，同`<!`                       |
| RAlt              | 右`Alt`键，同`>!`                       |
| Shift             | `Shift`键，同`+`                        |
| LShift            | 左`Shift`键，同`<+`                     |
| RShift            | 右`Shift`键，同`>+`                     |
|                   | 无`Win`热键，请用`#`                    |
| LWin              | 左`Win`键，同`<#`                       |
| RWin              | 右`Win`键，同`>#`                       |
| Up                | 上                                      |
| Down              | 下                                      |
| Left              | 左                                      |
| Right             | 右                                      |
| Home              | 首页                                    |
| End               | 尾页                                    |
| PgUp              | 上一页                                  |
| PgDn              | 下一页                                  |
| CapsLock          | 大小写锁定                              |
| Space             | 空格                                    |
| Tab               | 制表符                                  |
| Enter             | 回车                                    |
| Escape / Esc      | 退出                                    |
| Backspace / BS    | 删除                                    |
| ScrollLock        | 滚动锁定                                |
| Insert / Ins      | 插入                                    |
| Delete / Del      | 删除                                    |
| NumLock           | `NumLock`键(数字锁定)                   |
| NumpadAdd         | 加                                      |
| NumpadSub         | 减                                      |
| NumpadMult        | 乘                                      |
| NumpadDiv         | 除                                      |
| NumpadEnter       | `Enter`键                               |
| Numpad0           | 数字`0`                                 |
| Numpad1           | 数字`1`                                 |
| Numpad2           | 数字`2`                                 |
| Numpad3           | 数字`3`                                 |
| Numpad4           | 数字`4`                                 |
| Numpad5           | 数字`5`                                 |
| Numpad6           | 数字`6`                                 |
| Numpad7           | 数字`7`                                 |
| Numpad8           | 数字`8`                                 |
| Numpad9           | 数字`9`                                 |
| NumpadDot         | 点                                      |
| NumpadUp          | 上                                      |
| NumpadDown        | 下                                      |
| NumpadLeft        | 左                                      |
| NumpadRight       | 右                                      |
| NumpadHome        | 首页                                    |
| NumpadEnd         | 尾页                                    |
| NumpadPgUp        | 上一页                                  |
| NumpadPgDn        | 下一页                                  |
| NumpadIns         | 插入                                    |
| NumpadDel         | 删除                                    |
| NumpadClear       | 通常什么都不做                          |
| Volume_Mute       | 静音                                    |
| Volume_Up         | 音量+                                   |
| Volume_Down       | 音量-                                   |
| Media_Play_Pause  | 媒体播放/暂停                           |
| Media_Stop        | 媒体停止                                |
| Media_Next        | 媒体下一首                              |
| Media_Prev        | 媒体上一首                              |
| Browser_Home      | 浏览器主页                              |
| Browser_Forward   | 浏览器前进                              |
| Browser_Back      | 浏览器后退                              |
| Browser_Refresh   | 浏览器刷新                              |
| Browser_Stop      | 浏览器停止                              |
| Browser_Search    | 浏览器搜索                              |
| Browser_Favorites | 浏览器收藏夹                            |
| Launch_Mail       | 打开电子邮件                            |
| Launch_Media      | 打开媒体播放器                          |
| Launch_App1       | 打开此电脑                              |
| Launch_App2       | 打开计算器                              |
| AppsKey           | `Menu`键(右键菜单)                      |
| PrintScreen       | `PrtScr`键(截屏)                        |
| CtrlBreak         | `Ctrl+Pause`键                          |
|                   | 或`Ctrl+ScrollLock`键                   |
| Pause             | `Pause`键(暂停)                         |
|                   | 或`Ctrl+NumLock`键                      |
| Help              | `Help`键(帮助)                          |
|                   | (大多数键盘上不存在，通常和`F1`不同)    |
| Sleep             | `Sleep`键(休眠)                         |
|                   | (一些键盘上的`Sleep`键可能不是休眠功能) |
| SCnnn             | 指定按键扫描码                          |
| VKnn              | 指定十六进制虚拟按键码                  |

### 示例

语法：`热键::{代码}`或`热键::代码`

当按下`Ctrl+J`时，发送字符串`My First Script`

```js
^j::
{
  Send "My First Script"
}
```

可以缩写为一行

```js
^j::Send "My First Script"
```

当热键被触发时，热键的名称作为其第一个参数传递，参数名为`ThisHotkey`，例如

```js
^j::MsgBox ThisHotkey
```

要在热键中使用多个修饰键，那么需要把它们连续地列出来(顺序无关紧要)。下面的例子中使用`^!s`来表示`Ctrl+Alt+S`

```js
^!s::
{
  Send "Sincerely, John Smith"
}
```

组合热键，第一个按键会失去原有功能，需要加上`~`，例如

```js
~1 & 2::Send "Press 1 & 2"
```

多个热键可以垂直地叠放来让它们执行相同的动作，例如

```js
^1::
^2::
{
  MsgBox "Pressing either Control+1 or Control+2 will display this message."
}
```

通过不为按键或按键组合的热键指定任何操作可以在整个系统中完全禁用它们，下面的例子中禁用了`Ctrl+V`键

```js
^v::return
```

鼠标热键，例如

```js
MButton & WheelDown::MsgBox "You turned the mouse wheel down while holding down the middle button."
^!WheelUp::MsgBox "You rotated the wheel up while holding down Control+Alt."
```

## 热字符串

语法：`::热字符串::{代码}`或`::热字符串::代码`

输入`btw`后再输入一个终止符(`空格`、`制表符`、`回车`、`.`等)，他会自动删除输入的字符串并替换为新的字符串(有bug，删除有问题，不推荐使用)

```js
::btw::by the way
```

## 重映射按键

语法：`原热键::新热键`

例如：`a`和`b`按键互换

```js
a::b
b::a
```

## 注释

```js
;单行注释在单行
MsgBox "单行注释，分号前面要有空格或制表符" ;单行注释在末尾
/*多行注释在单行*/
MsgBox "多行注释，在单行使用，该注释行不能写代码" 
/*
多行注释在多行
*/
MsgBox "多行注释" 
```

## 变量

语法：`变量名:=值`

```js
; 数据类型有字符串、整数、16进制整数(使用前缀`0x`)、浮点数、布尔值(赋值`true`和`false`，显示`0`和`1`)
MyString:="字符串"
MyNumber:=123
MyHexNumber:=0x123
MyDoubleNumber:=123.456
MyBoolean:=true
MyBoolean2:=false
; 没有`空值`，请使用`空字符串`
MyEmptyString:=""
; 复制变量`:=`后跟变量名(不是引用)
; `:=`左右两侧可以存在空格
CopyOfMyNumber := MyNumber
MsgBox MyString " " MyNumber  " " MyHexNumber " " MyDoubleNumber " " MyBoolean " " MyBoolean2 " " MyEmptyString " " CopyOfMyNumber
; 可以连续赋值
CopyOfMyNumber2:=CopyOfMyNumber:=222
MsgBox MyNumber " " CopyOfMyNumber " " CopyOfMyNumber2
; 无法删除变量，如需清空变量缓存，请使用`空字符串`赋值
MyString:=""
MsgBox MyString
```

### 引用

- 引用语法：`变量名:=&被引用变量名`
- 获取值语法：`%变量名%`
- 赋值语法：`%变量名%=值`

```js
a:=1
; 引用
b:=&a
; 获取值
MsgBox a " " %b%
; 赋值
%b%:=2
MsgBox a " " %b%
```

### 局部变量和全局变量

```js
; 直接声明全局变量
; 不加任何修饰符的变量都是局部变量
; 在变量名前面加global声明为全局变量
global AAA := "AAA"
MsgBox AAA

; 在函数内声明全局变量
SetDataDir(Dir)
{
  global LogFileName
  LogFileName := Dir . "\my.log"
  ; 声明与赋值相结合
  global DataDir := Dir
}
Log(Text)
{
  ; 直接调用全局变量
  MsgBox DataDir "`n" LogFileName "`n" Text "`n"
}
SetDataDir("C:")
Log("data")

SetDefaults()
{
  ; 在首行声明所有变量都是全局变量(参数除外)
  global
  MyGlobal := 33
  ; 声明局部变量
  local x := 22
}
SetDefaults()
MsgBox MyGlobal
; 报错
; MsgBox x
```

### 静态变量

```js
Count()
{
  ; 静态变量是局部变量，只能声明在函数内部
  ; 使用static修饰符
  static Num := 0
  MsgBox Num
  Num += 1
}
Count()
Count()
Count()

Count2()
{
  ; 在首行声明所有变量都是静态变量(参数除外)
  ; (测试无效)
  static
  Num := 0
  ; 声明局部变量和全局变量取消静态变量
  local x := 22
  MsgBox Num ", " x
  Num += 1
  x += 1
}
Count2()
Count2()
Count2()
```

## 字符串转义

| 符号 | 转义 | 解释       |
| ---- | ---- | ---------- |
| `    | ``   | 反单引号   |
| "    | `"   | 双引号     |
| '    | `'   | 单引号     |
| ;    | `;   | 分号       |
| :    | `:   | 冒号       |
| {    | `{   | 左花括号   |
| LF   | `n   | 换行       |
| CR   | `r   | 回车       |
|      | `b   | 退格       |
|      | `t   | 制表符     |
|      | `s   | 空格       |
|      | `v   | 垂直制表符 |
|      | `a   | 响铃       |
|      | `f   | 进纸       |

```js
MyString:="使用双引号包围字符串，里面可以包含'单引号'"
MyString2:='使用单引号包围字符串，里面可以包含"双引号"'
MyString3:="使用双引号包围字符串，使用转义字符包含`"双引号`""
MyString4:='使用单引号包围字符串，使用转义字符包含`'单引号`''
MyString5:="`;分号`:冒号`{左花括号`n换行`r回车`b退格1`t制表符`s空格`v垂直制表符`a响铃`f进纸"
MsgBox MyString
MsgBox MyString2
MsgBox MyString3
MsgBox MyString4
MsgBox MyString5
```

## 运算符

| 符号       | 名称                  | 描述                            |
| ---------- | --------------------- | ------------------------------- |
| &变量名    | 引用                  | 获取                            |
| %变量名%   | 解引用                | 获取/赋值                       |
| x.y        | 成员访问              | 获取/赋值/调用                  |
| x.%z%      |                       | y是名称，z是表达式              |
| 参数名?    | 可选参数              |                                 |
| 变量名??值 | 给变量名提供默认值    |                                 |
| +/-        | 正/负(加/减)          |                                 |
| ++/--      | 自增/自减             |                                 |
| *//        | 乘/除                 |                                 |
| //         | 整除                  | 两侧必须是整数                  |
| **         | 幂                    | 底数**指数(右结合)              |
| <</>>      | 按位左移/算术右移     |                                 |
| >>>        | 逻辑右移              |                                 |
| &/\|/~/^   | 与/或/非/异或         | 按位                            |
| .          | 连接符                |                                 |
| </>        | 小于/大于             |                                 |
| <=/>=      | 小于等于/大于等于     |                                 |
| ~=         | 正则表达式            |                                 |
| =/!=       | 等于/不等于           | 不区分大小写                    |
| ==/！==    | 等于/不等于           | 区分大小写                      |
| IS         | 值是类的实例          | 值IS类                          |
| IN         | 保留                  |                                 |
| CONTAINS   | 保留                  |                                 |
| AND/&&     | 逻辑与                |                                 |
| OR/\|      | 逻辑或                |                                 |
| NOT/!      | 逻辑非                |                                 |
| ?:         | 三元运算符            | 表达式?真值:假值                |
| :=         | 赋值                  |                                 |
| .=         | 连接赋值              | 变量名.=值 是 变量名:=变量名.值 |
| +=/-=      | 加/减赋值             |                                 |
| *=//=      | 乘/除赋值             |                                 |
| //=        | 整除赋值              |                                 |
| &=/\|=/^=  | 与/或/异或赋值        | 没有~=非赋值，他是正则表达式    |
| <</>>      | 按位左移/算术右移赋值 |                                 |
| >>>        | 逻辑右移赋值          |                                 |
| ()=>表达式 | 胖箭头函数            |                                 |
| ,          | 多语句                |                                 |

## 函数

```js
; 函数定义(函数名称和变量名不区分大小写)
Add(x, y)
{
  return x + y
}
; 函数调用
Var := Add(2, 3)
MsgBox Var
; 也可以只调用不保存返回值
Add(2, 3)
; 如果在行的开头调用，括号可以省略
Add 2, 3
```

### 参数引用

```js
a := 1, b := 2

; 正常传参，内部参数为局部变量，无法修改入参值
Swap(Left, Right)
{
  temp := Left
  Left := Right
  Right := temp
}
Swap(a, b)
MsgBox a ',' b

; 引用传参，可以修改入参值(隐式解引用，入参&Left是值)
Swap2(&Left, &Right)
{
  MsgBox Left
  temp := Left
  Left := Right
  Right := temp
}
Swap2(&a, &b)
MsgBox a ',' b

; 显式解引用，入参Left是引用
Swap3(Left, Right)
{
  MsgBox %Left%
  temp := %Left%
  %Left% := %Right%
  %Right% := temp
}
Swap3(&a, &b)
MsgBox a ',' b
```

### 可选参数

```js
; 参数p是可选的，p?等同于p:=unset
MyFunc(p?) {
  ; IsSet函数判断是否有值
  if IsSet(p)
    MsgBox "p的值为" p
  else
    MsgBox "p未设置值"
}
MyFunc(42)
MyFunc

; 显示声明参数可选
Greet(title:=unset) {
  ; 使用?传递可选参数
  MsgBox("Hello!", title?)
}
; 标题显示Greeting
Greet "Greeting"
; 标题显示文件名
Greet
```

### 默认参数

```js
; 入参Z默认值为0
Add(X, Y, Z := 0) {
  return X + Y + Z
}
; 传入第三个参数
MsgBox Add(1,2,3)
; 不传第三个参数，使用默认值0
MsgBox Add(1,2)

; 可以有多个默认参数，但是之后必须是默认参数
MyFunc(X, Y:=2, Z:=0) {
  return X ", " Y ", " Z
}
; 只传入必须参数
MsgBox MyFunc(1)
; 不传第三个参数
MsgBox MyFunc(1,3)
; 不传第二个参数
MsgBox MyFunc(1,,3)
; 传入全部参数
MsgBox MyFunc(1,3,4)
```

### 可变参数

```js
; 可变参数只能声明在尾部，用*标记，相当于传入一个数组
Join(sep, params*) {
  for index,param in params
    str .= param . sep
  return "Length:" params.Length "`n" SubStr(str, 1, -StrLen(sep))
}
MsgBox Join("`n", "one", "two", "three")
```

### 返回值

```js
; 返回一个值
returnTest() {
  return 123
}
MsgBox returnTest()

; 返回引用
returnByRef(&val1, &val2, val3)
{
  val1 := "A"
  val2 := 100
  ; 显式引用
  %val3% := 1.1
  ; return可以省略
  return
}
returnByRef(&A, &B, &C)
MsgBox A "," B "," C

; 返回数组
returnArray1() {
  Test := [123,"ABC"]
  return Test
}
Test1 := returnArray1()
MsgBox Test1[1] "," Test1[2]

; 返回数组2
returnArray2() {
  x := 456
  y := "EFG"
  return [x, y]
}
Test2 := returnArray2()
MsgBox Test2[1] "," Test2[2]

; 返回对象
returnObject() {
  Test := {id: 789, val: "HIJ"}
  return Test
}
Test3 := returnObject()
MsgBox Test3.id "," Test3.val
```

### 嵌套函数

```js
outer(x) {
  ; 嵌套函数只能内部调用
  inner(y) {
    MsgBox(y, x)
  }
  inner("one")
  inner("two")
}
outer("title")
```

### 静态函数

```js
; 顶层函数都是静态函数
Outer() {
  ; 声明内部函数为静态函数
  static Inner() {
    static count := 0
    MsgBox count
    count++
  }
  Inner()
}
Outer()
Outer()
Outer()
```

### 闭包

```js
make_greeter(f)
{
  ; 声明一个函数
  greet(subject)
  {
    MsgBox Format(f, subject)
  }
  ; 再把它返回，就是一个闭包
  return greet
}
g := make_greeter("Hello, {}!")
g("World")
```

## 流程控制

### #include 引用脚本

```js
; 包含用户自己的脚本
; my.ash
#include "test.ahk"
Test("aa")

; test.ash
Test(msg){
  MsgBox("Test:" msg)
}
```

### goto

```js
MsgBox "1"
; 跳转到标签(不推荐使用)
goto MyLabel
MsgBox "2"

MyLabel:
MsgBox "3"
```

### if-else

```js
x:=1
if(x=1){
  MsgBox("值为1")
}else if(x=2){
  MsgBox("值为2")
}else{
  MsgBox("值为其它")
}
```

### switch-case-default

```js
x:=1

; switch可以省略参数，以执行第一个计算结果为true的情况
switch(x){
case 1:
  ; 不能加大括号
  MsgBox("值为1")
  MsgBox("值为1")
; 支持多匹配
case 2,3:
  MsgBox("值为2或3")
; 默认值，可以不写在最后
default: 
  MsgBox("值为其它")
}
```

### throw-try-catch-finally-OnError

```js
; 注册一个当发生未处理错误时，会自动调用的函数
OnError MyError

test(x){
  if(x){
    throw Error("抛出错误")
    ; MsgBox("抛出错误后不再执行")
  }
  MsgBox("正常执行")
}

v:=true

try{
  test(v)
}catch Error as e{
  MsgBox("捕获到错误，错误内容[" e.Message "]")
}else{
  MsgBox("未发生错误")
}finally{
  MsgBox("总是执行")
}

test(v)

MyError(exception, mode){
  ; exception为抛出的值，通常为Error对象
  ; mode为错误模式
  ; Return:抛出的值是一个可继续的运行时错误。如果回调返回-1，线程继续;否则线程退出
  ; Exit:抛出的值是一个不可继续的运行时错误或由脚本thrown的值。线程将退出
  ; ExitApp:抛出的值是一个严重的运行时错误，例如由DllCall检测到的损坏。程序将退出
  MsgBox("OnError捕获到错误exception[" exception.Message "],mode[" mode "]")
  ; 返回值
  ; 0,""或没有Return:允许错误处理正常进行
  ; 1:抑制默认错误对话框和任何剩余的错误回调
  ; -1:同上,但如果Mode(第二个参数)包含单词Return,则允许继续执行当前线程
  return true
}
```
