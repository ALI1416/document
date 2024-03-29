# ACSII

<!-- Please open it by UTF-8 encoding -->

American Standard Code for Information Interchange  
美国信息交换标准代码

参考：

- <https://baike.baidu.com/item/ASCII>
- <https://www.asciim.cn/>
- <https://www.ascii-code.com/>
- <https://wiki.freepascal.org/ASCII>
- <http://shubang.net/unicode/>

提示：

- 32-255号可以用Alt+小键盘来输入(文本)
- 1-255号可以用Alt+小键盘来输入(CMD)
- 1-31号可以用Ctrl+对应字符输入(CMD)

## 控制字符

| 序号 | 字符1  | 字符2  | 简写 | Ctrl | 解释         | 英文                      |
| ---- | ------ | ------ | ---- | ---- | ------------ | ------------------------- |
| 0    | ` `    | &#0;   | NUL  | @    | 空字符       | null char                 |
| 1    | ``    | &#1;   | SOH  | A    | 标题开始     | start of heading          |
| 2    | ``    | &#2;   | STX  | B    | 正文开始     | start of text             |
| 3    | ``    | &#3;   | ETX  | C    | 正文结束     | end of text               |
| 4    | ``    | &#4;   | EOT  | D    | 传输结束     | end of transmission       |
| 5    | ``    | &#5;   | ENQ  | E    | 询问         | enquiry                   |
| 6    | ``    | &#6;   | ACK  | F    | 收到通知     | acknowledgment            |
| 7    | ``    | &#7;   | BEL  | G    | 铃           | bell                      |
| 8    | ``    | &#8;   | BS   | H    | 退格         | back space                |
| 9    | `	`    | &#9;   | TAB  | I    | 水平制表符   | horizontal tab            |
| 10   | `(LF)` | &#10;  | LF   | J    | 换行符       | line feed                 |
| 11   | ``    | &#11;  | VT   | K    | 垂直制表符   | vertical tab              |
| 12   | ``    | &#12;  | FF   | L    | 换页符       | form feed                 |
| 13   | `(CR)` | &#13;  | CR   | M    | 回车键       | carriage return           |
| 14   | ``    | &#14;  | SO   | N    | 移出         | shift out                 |
| 15   | ``    | &#15;  | SI   | O    | 移入         | shift in                  |
| 16   | ``    | &#16;  | DLE  | P    | 数据链路转义 | data link escape          |
| 17   | ``    | &#17;  | DC1  | Q    | 设备控制1    | device control 1          |
| 18   | ``    | &#18;  | DC2  | R    | 设备控制2    | device control 2          |
| 19   | ``    | &#19;  | DC3  | S    | 设备控制3    | device control 3          |
| 20   | ``    | &#20;  | DC4  | T    | 设备控制4    | device control 4          |
| 21   | ``    | &#21;  | NAK  | U    | 拒绝接收     | negative acknowledgement  |
| 22   | ``    | &#22;  | SYN  | V    | 同步空闲     | synchronous idle          |
| 23   | ``    | &#23;  | ETB  | W    | 传输块结束   | end of transmission block |
| 24   | ``    | &#24;  | CAN  | X    | 取消         | cancel                    |
| 25   | ``    | &#25;  | EM   | Y    | 介质中断     | end of medium             |
| 26   | ``    | &#26;  | SUB  | Z    | 替换         | substitute                |
| 27   | ``    | &#27;  | ESC  | [    | 换码符       | escape                    |
| 28   | ``    | &#28;  | FS   | \    | 文件分隔符   | file separator            |
| 29   | ``    | &#29;  | GS   | ]    | 组分隔符     | group separator           |
| 30   | ``    | &#30;  | RS   | ^    | 记录分隔符   | record separator          |
| 31   | ``    | &#31;  | US   | _    | 单元分隔符   | unit separator            |
| 127  | ``    | &#127; | DEL  | 退格 | 删除         | delete                    |

## 可显字符

| 序号 | 符号            | HTML   | 解释        | 英文                       |
| ---- | --------------- | ------ | ----------- | -------------------------- |
| 32   | ` `             |        | 空格        | space                      |
| 33   | `!`             |        | 感叹号      | exclamation mark           |
| 34   | `"`             | &quot; | 双引号      | quotation mark             |
| 35   | `#`             |        | 井号        | number sign                |
| 36   | `$`             |        | 美元符      | dollar sign                |
| 37   | `%`             |        | 百分号      | percent sign               |
| 38   | `&`             | &amp;  | 和号        | ampersand                  |
| 39   | `'`             | &apos; | 单引号      | single quotation mark      |
| 40   | `(`             |        | 左括号      | left parenthesis           |
| 41   | `)`             |        | 右括号      | right parenthesis          |
| 42   | `*`             |        | 星号        | asterisk                   |
| 43   | `+`             |        | 加号        | plus sign                  |
| 44   | `,`             |        | 逗号        | comma                      |
| 45   | `-`             |        | 减号/破折号 | minus sign                 |
| 46   | `.`             |        | 句号        | period, decimal point, dot |
| 47   | `/`             |        | 斜杠        | slash                      |
| 48   | **`0`**         |        | 数字0       | digit 0                    |
| 49   | **`1`**         |        | 数字1       | digit 1                    |
| 50   | **`2`**         |        | 数字2       | digit 2                    |
| 51   | **`3`**         |        | 数字3       | digit 3                    |
| 52   | **`4`**         |        | 数字4       | digit 4                    |
| 53   | **`5`**         |        | 数字5       | digit 5                    |
| 54   | **`6`**         |        | 数字6       | digit 6                    |
| 55   | **`7`**         |        | 数字7       | digit 7                    |
| 56   | **`8`**         |        | 数字8       | digit 8                    |
| 57   | **`9`**         |        | 数字9       | digit 9                    |
| 58   | `:`             |        | 冒号        | colon                      |
| 59   | `;`             |        | 分号        | semicolon                  |
| 60   | `<`             | &lt;   | 小于号      | less than                  |
| 61   | `=`             |        | 等于号      | equal                      |
| 62   | `>`             | &gt;   | 大于号      | greater than               |
| 63   | `?`             |        | 问号        | question mark              |
| 64   | `@`             |        | 电子邮件符  | at sign                    |
| 65   | **`A`**         |        | 大写字母A   | uppercase A                |
| 66   | **`B`**         |        | 大写字母B   | uppercase B                |
| 67   | **`C`**         |        | 大写字母C   | uppercase C                |
| 68   | **`D`**         |        | 大写字母D   | uppercase D                |
| 69   | **`E`**         |        | 大写字母E   | uppercase E                |
| 70   | **`F`**         |        | 大写字母F   | uppercase F                |
| 71   | **`G`**         |        | 大写字母G   | uppercase G                |
| 72   | **`H`**         |        | 大写字母H   | uppercase H                |
| 73   | **`I`**         |        | 大写字母I   | uppercase I                |
| 74   | **`J`**         |        | 大写字母J   | uppercase J                |
| 75   | **`K`**         |        | 大写字母K   | uppercase K                |
| 76   | **`L`**         |        | 大写字母L   | uppercase L                |
| 77   | **`M`**         |        | 大写字母M   | uppercase M                |
| 78   | **`N`**         |        | 大写字母N   | uppercase N                |
| 79   | **`O`**         |        | 大写字母O   | uppercase O                |
| 80   | **`P`**         |        | 大写字母P   | uppercase P                |
| 81   | **`Q`**         |        | 大写字母Q   | uppercase Q                |
| 82   | **`R`**         |        | 大写字母R   | uppercase R                |
| 83   | **`S`**         |        | 大写字母S   | uppercase S                |
| 84   | **`T`**         |        | 大写字母T   | uppercase T                |
| 85   | **`U`**         |        | 大写字母U   | uppercase U                |
| 86   | **`V`**         |        | 大写字母V   | uppercase V                |
| 87   | **`W`**         |        | 大写字母W   | uppercase W                |
| 88   | **`X`**         |        | 大写字母X   | uppercase X                |
| 89   | **`Y`**         |        | 大写字母Y   | uppercase Y                |
| 90   | **`Z`**         |        | 大写字母Z   | uppercase Z                |
| 91   | `[`             |        | 做方括号    | left square bracket        |
| 92   | `\`             |        | 反斜杠      | backslash                  |
| 93   | `]`             |        | 右方括号    | right square bracket       |
| 94   | `^`             |        | 脱字符      | circumflex accent          |
| 95   | `_`             |        | 下划线      | underscore                 |
| 96   | <code>`</code>  |        | 反引号      | grave accent               |
| 97   | **`a`**         |        | 小写字母a   | lowercase a                |
| 98   | **`b`**         |        | 小写字母b   | lowercase b                |
| 99   | **`c`**         |        | 小写字母c   | lowercase c                |
| 100  | **`d`**         |        | 小写字母d   | lowercase d                |
| 101  | **`e`**         |        | 小写字母e   | lowercase e                |
| 102  | **`f`**         |        | 小写字母f   | lowercase f                |
| 103  | **`g`**         |        | 小写字母g   | lowercase g                |
| 104  | **`h`**         |        | 小写字母h   | lowercase h                |
| 105  | **`i`**         |        | 小写字母i   | lowercase i                |
| 106  | **`j`**         |        | 小写字母j   | lowercase j                |
| 107  | **`k`**         |        | 小写字母k   | lowercase k                |
| 108  | **`l`**         |        | 小写字母l   | lowercase l                |
| 109  | **`m`**         |        | 小写字母m   | lowercase m                |
| 110  | **`n`**         |        | 小写字母n   | lowercase n                |
| 111  | **`o`**         |        | 小写字母o   | lowercase o                |
| 112  | **`p`**         |        | 小写字母p   | lowercase p                |
| 113  | **`q`**         |        | 小写字母q   | lowercase q                |
| 114  | **`r`**         |        | 小写字母r   | lowercase r                |
| 115  | **`s`**         |        | 小写字母s   | lowercase s                |
| 116  | **`t`**         |        | 小写字母t   | lowercase t                |
| 117  | **`u`**         |        | 小写字母u   | lowercase u                |
| 118  | **`v`**         |        | 小写字母v   | lowercase v                |
| 119  | **`w`**         |        | 小写字母w   | lowercase w                |
| 120  | **`x`**         |        | 小写字母x   | lowercase x                |
| 121  | **`y`**         |        | 小写字母y   | lowercase y                |
| 122  | **`z`**         |        | 小写字母z   | lowercase z                |
| 123  | `{`             |        | 左大括号    | left curly bracket         |
| 124  | <code>\|</code> |        | 垂线        | vertical line              |
| 125  | `}`             |        | 右大括号    | right curly bracket        |
| 126  | `~`             |        | 波浪号      | tilde                      |
