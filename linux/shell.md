# Shell脚本

## 文件

- 使用`.sh`作为文件后缀
- 使用`sh 文件名.sh`执行脚本，也可以使用`dash`、`bash`

## 注释

注释使用`#`标记，例如

```sh
#!/bin/sh
# 单行注释
# echo "Hello"
echo "World" # 行尾注释
```

文件头部需要指定解释器，告诉脚本应该由哪个程序来解释执行，例如

```sh
#!/bin/sh
echo "Hello, World!"
```

- `#!/bin/dash`：精简(Ubuntu默认)
- `#!/bin/sh`：默认
- `#!/bin/bash`：专业

## 变量

- 不用定义数据类型
- 使用`=`赋值
- `=`两侧不能加`空格`
- 变量名只能包含字母、数字和下划线，不能以数字开头

使用`$`引用变量

```sh
#!/bin/sh
# 字符串变量
my_var="Hello, World!"
echo $my_var

name="John Doe"
# 变量可以插入到引号内
echo "Hello, $name"

number=42
# 数字变量
echo "The number is $number"
```

修饰符`readonly`只读变量(常量)

```sh
#!/bin/sh
readonly val="value"
# 这将会报错
val="new_value"
```

定义数组(bash才可，sh、dash不支持)

```sh
#!/bin/bash
arr=(value1 value2 value3)
echo ${arr[1]}
```

### 环境变量

- 修饰符`export`可以将变量设置为环境变量
- `env`查看当前所有环境变量

```sh
#!/bin/sh
env
echo "----------"
export MY_ENV_VAR="value"
env
```

### 常用Shell变量

- `$0`：当前脚本的文件名
- `$1`、`$2`...：传递给脚本或函数的参数
- `$#`：传递给脚本或函数的参数个数
- `$@`：传递给脚本或函数的所有参数
- `$?`：上个命令的退出状态
- `$$`：当前Shell进程的PID
- `$!`：后台运行的最后一个进程的PID

## 输入

`read`命令用于从标准输入读取一行输入，并将其分配给一个或多个变量

```sh
#!/bin/sh
echo "Enter your name:"
read name
echo "Hello, $name!"
```

### 选项

| 常用 | 选项      | 解释                                                 |
| ---- | --------- | ---------------------------------------------------- |
|      | -a 数组   | 将词语按顺序赋值给<数组>变量的各个成员，索引从零开始 |
|      | -d 分隔符 | 继续读取，直到遇到<分隔符>的第一个字符，而不是换行符 |
|      | -e        | 使用Readline获取行                                   |
|      | -i 文本   | 使用<文本>作为Readline的初始文字                     |
| ■■   | -n 字符数 | 限制输入字符数(bash支持)                             |
| ■    | -N 字符数 | 强制输入字符数(bash支持)                             |
| ■■   | -p 提示符 | 在尝试进行读取之前先输出<提示符>(不加换行)           |
|      | -r        | 不允许反斜杠转义任何字符                             |
| ■■   | -s        | 不回显来自终端的输入(bash支持)                       |
| ■    | -t 超时   | 设置超时(bash支持)                                   |
|      | -u fd     | 从文件描述符FD中读取，而不是标准输入                 |

```sh
#!/bin/bash
# 输出提示符，最多5个字符
read -n 5 -p "Enter your username: " username
# 隐藏输入，只能6个字符，5秒超时
read -s -N 6 -t 5 -p "Enter your password: " password
echo "Username: $username"
echo "Password: $password"
```

## 输出

`echo`命令用于输出字符串到标准输出

### 选项

| 常用 | 选项 | 解释                 |
| ---- | ---- | -------------------- |
| ■    | -n   | 不换行               |
| ■    | -e   | 转义(默认)(bash支持) |
| ■    | -E   | 不转义(bash支持)     |

```sh
#!/bin/bash
# 不换行
echo -n "Hello, "
echo "World!"
# 转义
echo -e "Line1\nLine2\nLine3"
```

`printf`命令用于格式化输出，类似于C语言中的printf函数

- `%s`：字符串
- `%d`：十进制整数
- `%f`：浮点数
- `%x`：十六进制数

```sh
#!/bin/sh
name="John"
age=25
printf "Name: %s, Age: %d\n" "$name" "$age"
```

## 条件判断

使用`if`语句

```sh
if [ condition ]; then
  # statements
elif [ condition ]; then
  # statements
else
  # statements
fi
```

```sh
#!/bin/sh
number=5
if [ $number -gt 0 ]; then
  echo "The number is positive."
elif [ $number -lt 0 ]; then
  echo "The number is negative."
else
  echo "The number is zero."
fi
```

使用`case`语句

```sh
case "$variable" in
  pattern1)
    # statements
    ;;
  pattern2)
    # statements
    ;;
  *)
    # default statements
    ;;
esac
```

```sh
#!/bin/sh
echo "Enter a single character (a-g):"
read char
case "$char" in
  a)
    echo "Monday"
    ;;
  b)
    echo "Tuesday"
    ;;
  c)
    echo "Wednesday"
    ;;
  d)
    echo "Thursday"
    ;;
  e)
    echo "Friday"
    ;;
  f)
    echo "Saturday"
    ;;
  g)
    echo "Sunday"
    ;;
  *)
    echo "Invalid input"
    ;;
esac
```

使用`test`语句

文件测试

- `!`：非
- `-e`：文件存在
- `-f`：文件是普通文件
- `-d`：文件是目录

```sh
#!/bin/sh
if test -e /etc/passwd; then
  echo "/etc/passwd exists."
fi
```

字符串测试

- `-z`：字符串为空
- `-n`：字符串非空
- `=`：字符串相等
- `!=`：字符串不相等

```sh
#!/bin/sh
if test -z "$name"; then
  echo "Name is empty."
fi
```

数值测试

- `-eq`：等于
- `-ne`：不等于
- `-gt`：大于
- `-lt`：小于
- `-ge`：大于等于
- `-le`：小于等于

```sh
#!/bin/sh
age=30
if test $age -gt 20; then
  echo "Age is greater than 20."
fi
```

## 循环语句

使用`for`语句

```sh
for var in list; do
  # statements
done
```

```sh
#!/bin/sh
for i in {1..5}; do
  echo "Number: $i"
done
```

使用`while`语句

```sh
while [ condition ]; do
  # statements
done
```

```sh
#!/bin/sh
counter=1
while [ $counter -le 5 ]; do
  echo "Counter: $counter"
  counter=$((counter + 1))
done
```

使用`until`语句(条件不满足时退出循环，与`while`相反)

```sh
until [ condition ]; do
  # statements
done
```

```sh
#!/bin/sh
counter=1
until [ $counter -gt 5 ]; do
  echo "Counter: $counter"
  counter=$((counter + 1))
done
```

## 函数

```sh
function_name() {
  # statements
}
```

```sh
#!/bin/sh
greet() {
  echo "Hello, $1!"
}

greet "World"
```

带返回值

```sh
#!/bin/sh
add() {
  result=$(( $1 + $2 ))
  return $result
}

add 2 3
echo "Sum: $?"
```

## \${}、\$()、\$[]、$(())、[]、[[]]、(())

- `${}`：引用变量、处理字符串
- `$()`：命令替换
- `$[]`、`$(())`：数学运算
- `[]`、`[[]]`：判断
- `(())`：数学运算和控制循环

### ${}

当`${}`用来引用变量时，其等价于`$`，只不过`${}`可以指定变量边界

字符串截取及替换处理

| 变量设定方式                     | 说明                                                                      |
| -------------------------------- | ------------------------------------------------------------------------- |
| ${string#substring}              | 从$string的开头位置截掉最短匹配的$substring                               |
| ${string##substring}             | 从$string的开头位置截掉最长匹配的$substring                               |
| ${string%substring}              | 从$string的结尾位置截掉最短匹配的$substring                               |
| ${string%%substring}             | 从$string的结尾位置截掉最长匹配的$substring                               |
| ${string/substring/replacement}  | 使用$replacement来替换第一个匹配的$substring                              |
| ${string//substring/replacement} | 使用$replacement来替换所有匹配的$substring                                |
| ${string/#substring/replacement} | 如果$substring匹配$string的开头部分，那么就用$replacement来替换$substring |
| ${string/%substring/replacement} | 如果$substring匹配$string的结尾部分，那么就用$replacement来替换$substring |

变量赋值判断

| 变量设定方式            | 说明                                                                 |
| ----------------------- | -------------------------------------------------------------------- |
| ${parameter-default}    | 如果变量parameter没被声明，那么就使用默认值                          |
| ${parameter:-default}   | 如果变量parameter没被设置，那么就使用默认值                          |
| ${parameter+alt_value}  | 如果变量parameter被声明了，那么就使用alt_value，否则就使用null字符串 |
| ${parameter:+alt_value} | 如果变量parameter被设置了，那么就使用alt_value，否则就使用null字符串 |
| ${parameter=default}    | 如果变量parameter没声明，那么就把它的值设为default                   |
| ${parameter:=default}   | 如果变量parameter没设置，那么就把它的值设为default                   |
| ${parameter?err_msg}    | 如果parameter已经被声明，那么就使用设置的值，否则打印err_msg错误消息 |
| ${parameter:?err_msg}   | 如果parameter已经被设置，那么就使用设置的值，否则打印err_msg错误消息 |

获取变量长度

- `${array[@]}`、`${array[*]}`：输出数组全部元素
- `${array[0]}`：输出数组第一个元素
- `${#array[@]}`、`${#array[*]}`：统计数组元素的个数
- `${#array[0]}`：计算数组第一个元素的长度

### $()

`$()`是用来做命令替换的，其等价于<code>\`\`</code>(反引号)，一般使用`$()`，以增加脚本的可读性，反引号不能多次嵌套使用

```sh
#!/bin/sh
echo $(date +%Y%m%d)
echo now $(echo test $(echo date is $(date +%Y%m%d)))
```

### \$[]\(bash支持)、$(())

`$[]`是用来进行数学运算的，其等价于`$(())`，支持`+-*/%`，并且在使用中变量可以不使用`$`，直接使用变量名即可

```sh
#!/bin/sh
echo $[1+2]
echo $((1+2))
a=1
b=2
echo $[a+b]
echo $((a+b))
echo $[$a+$b]
echo $(($a+$b))
```

### []

`[]`用于判断表达式的是0或非0，以决定程序的执行顺序，其等价于`test`命令

```sh
#!/bin/sh
# 判断文件夹folder是否存在，存在输出exist，不存在输出no exist
# 只用[]，可读性较差
[ -d folder ] && echo "exist" || echo "no exist"
# []和if一起使用，可读性较好
if [ -d folder ]; then
  echo "exist"
else
  echo "no exist"
fi
# 只用test
if test -d folder
then
  echo "exist"
else
  echo "no exist"
fi
```

### [[]]\(bash支持)

`[[]]`是`[]`的增强版，其返回值也是0或者非0，并且，在`[[]]`中使用`>` 、`<`等符号不需要转义

```sh
#!/bin/sh
# []需要转义
a=4
if [ $a \> 5 ]
then
  echo "$a>5"
else
  echo "$a<5"
fi
# [[]]不需要转义
if [[ $a > 5 ]]
then
  echo "$a>5"
else
  echo "$a<5"
fi
```

`[[]]`支持`&&`和`||`，也支持`==`和`!=`和`=~`(正则表达式左侧是否匹配右侧)的连接或组合判断(但是不支持`>`、`<`、`>=`、`<=`等)

```sh
#!/bin/sh
a=1
if [[ $a != 4 && $a != 5 ]] 
then
  echo "hello"
fi
```

### (())(bash支持)

`(())`除了结合`$`进行数学运算之外，还可以用于`for`或`while`循环命令中控制循环，类似于c语言，当改变变量的值时，且不需要使用`$`

```sh
#!/bin/sh
for((i=1;i<5;i++))
do
  echo "this is $i"
done

i=0
while [ $i -le 2 ]
do
  echo "this is $i"
  ((i++))
done

while [ $i -le 4 ]
do
  echo "this is $i"
  ((i=i+1))
done

while [ $i -le 6 ]
do
  echo "this is $i"
  ((++i))
done
```
