# ACSII
American Standard Code for Information Interchange  
美国信息交换标准代码

参考：
- https://baike.baidu.com/item/ASCII
- https://www.asciim.cn/
- https://www.ascii-code.com/
- https://wiki.freepascal.org/ASCII
- http://shubang.net/unicode/

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

## 扩展字符
| 序号 | 符号    | HTML     | 解释                      | 英文                                       |
| ---- | ------- | -------- | ------------------------- | ------------------------------------------ |
| 128  | `€`     | &euro;   | 欧元符号                  | euro sign                                  |
| 129  | ``     |          |                           |                                            |
| 130  | `‚`     | &sbquo;  | 单下9号引号               | single low-9 quotation mark                |
| 131  | **`ƒ`** | &fnof;   | 带钩的拉丁文小写字母f     | latin small letter f with hook             |
| 132  | `„`     | &bdquo;  | 双下9号引号               | double low-9 quotation mark                |
| 133  | `…`     | &hellip; | 水平省略号                | horizontal ellipsis                        |
| 134  | `†`     | &dagger; | 匕首                      | dagger                                     |
| 135  | `‡`     | &Dagger; | 双匕首                    | double dagger                              |
| 136  | `ˆ`     | &circ;   | 扬抑符                    | modifier letter circumflex accent          |
| 137  | `‰`     | &permil; | 千分号                    | per mille sign                             |
| 138  | **`Š`** | &Scaron; | 带抑扬符的拉丁文大写字母S | latin capital letter S with caron          |
| 139  | `‹`     | &lsaquo; | 单左指角引号              | Single left-pointing angle quotation       |
| 140  | **`Œ`** | &OElig;  | 拉丁文大写连字OE          | latin capital ligature OE                  |
| 141  | ``     |          |                           |                                            |
| 142  | **`Ž`** | &Zcaron; | 带抑扬符的拉丁文大写字母Z | latin capital letter Z with caron          |
| 143  | ``     |          |                           |                                            |
| 144  | ``     |          |                           |                                            |
| 145  | `‘`     | &lsquo;  | 左单引号                  | left single quotation mark                 |
| 146  | `’`     | &rsquo;  | 右单引号                  | right single quotation mark                |
| 147  | `“`     | &ldquo;  | 左双引号                  | left double quotation mark                 |
| 148  | `”`     | &rdquo;  | 右双引号                  | right double quotation mark                |
| 149  | `•`     | &bull;   | 项目符号                  | bullet                                     |
| 150  | `–`     | &ndash;  | 短破折号                  | en dash                                    |
| 151  | `—`     | &mdash;  | 破折号                    | em dash                                    |
| 152  | `˜`     | &tilde;  | 小波浪号                  | small tilde                                |
| 153  | `™`     | &trade;  | 商标符号                  | trade mark sign                            |
| 154  | **`š`** | &scaron; | 带抑扬符的拉丁文小写字母s | latin small letter s with caron            |
| 155  | `›`     | &rsaquo; | 单右指角引号              | single right-pointing angle quotation mark |
| 156  | **`œ`** | &oelig;  | 拉丁文小写连字oe          | latin small ligature oe                    |
| 157  | ``     |          |                           |                                            |
| 158  | **`ž`** | &zcaron; | 带抑扬符的拉丁文小写字母z | latin small letter z with caron            |
| 159  | **`Ÿ`** | &Yuml;   | 带分音符的拉丁文大写字母Y | latin capital letter Y with diaeresis      |
| 160  | ` `     | &nbsp;   | 不间断空格                | non-breaking space                         |
| 161  | `¡`     | &iexcl;  | 倒感叹号                  | inverted exclamation mark                  |
| 162  | `¢`     | &cent;   | 分母符号                  | cent sign                                  |
| 163  | `£`     | &pound;  | 磅符号                    | pound sign                                 |
| 164  | `¤`     | &curren; | 货币符号                  | currency sign                              |
| 165  | `¥`     | &yen;    | 日元符号                  | yen sign                                   |
| 166  | `¦`     | &brvbar; | 断条                      | pipe, broken vertical bar                  |
| 167  | `§`     | &sect;   | 剖面符号                  | section sign                               |
| 168  | `¨`     | &uml;    | 分音符                    | spacing diaeresis, umlaut                  |
| 169  | `©`     | &copy;   | 版权标志                  | copyright sign                             |
| 170  | `ª`     | &ordf;   | 阴性序数指示符            | feminine ordinal indicator                 |
| 171  | `«`     | &laquo;  | 左双角引号                | left double angle quotes                   |
| 172  | `¬`     | &not;    | 非符号                    | not sign                                   |
| 173  | `­`     | &shy;    | 软连字符                  | soft hyphen                                |
| 174  | `®`     | &reg;    | 注册标志                  | registered trade mark sign                 |
| 175  | `¯`     | &macr;   | 宏                        | spacing macron, overline                   |
| 176  | `°`     | &deg;    | 度数符号                  | degree sign                                |
| 177  | `±`     | &plusmn; | 正负号                    | plus-or-minus sign                         |
| 178  | `²`     | &sup2;   | 上标2                     | superscript two, squared                   |
| 179  | `³`     | &sup3;   | 上标3                     | superscript three, cubed                   |
| 180  | `´`     | &acute;  | 锐音符                    | acute accent, spacing acute                |
| 181  | `µ`     | &micro;  | 微符号                    | micro sign                                 |
| 182  | `¶`     | &para;   | 段落标记                  | pilcrow sign, paragraph sign               |
| 183  | `·`     | &middot; | 中间点                    | middle dot, georgian comma                 |
| 184  | `¸`     | &cedil;  | 下加变音符                | spacing cedilla                            |
| 185  | `¹`     | &sup1;   | 上标1                     | superscript one                            |
| 186  | `º`     | &ordm;   | 阳性序数指示符            | masculine ordinal indicator                |
| 187  | `»`     | &raquo;  | 右双角引号                | right double angle quotes                  |
| 188  | `¼`     | &frac14; | 分数1/4                   | fraction one quarter                       |
| 189  | `½`     | &frac12; | 分数1/2                   | fraction one half                          |
| 190  | `¾`     | &frac34; | 分数3/3                   | fraction three quarters                    |
| 191  | `¿`     | &iquest; | 倒问号                    | inverted question mark                     |
| 192  | **`À`** | &Agrave; | 带抑音符的拉丁文大写字母A | latin capital letter A with grave          |
| 193  | **`Á`** | &Aacute; | 带锐音符的拉丁文大写字母A | latin capital letter A with acute          |
| 194  | **`Â`** | &Acirc;  | 带扬抑符的拉丁文大写字母A | latin capital letter A with circumflex     |
| 195  | **`Ã`** | &Atilde; | 带波浪号的拉丁文大写字母A | latin capital letter A with tilde          |
| 196  | **`Ä`** | &Auml;   | 带分音符的拉丁文大写字母A | latin capital letter A with diaeresis      |
| 197  | **`Å`** | &Aring;  | 带上圆圈的拉丁文大写字母A | latin capital letter A with ring above     |
| 198  | **`Æ`** | &AElig;  | 拉丁文大写字母AE          | latin capital letter AE                    |
| 199  | **`Ç`** | &Ccedil; | 带下加符的拉丁文大写字母C | latin capital letter C with cedilla        |
| 200  | **`È`** | &Egrave; | 带抑音符的拉丁文大写字母E | latin capital letter E with grave          |
| 201  | **`É`** | &Eacute; | 带锐音符的拉丁文大写字母E | latin capital letter E with acute          |
| 202  | **`Ê`** | &Ecirc;  | 带上圆圈的拉丁文大写字母E | latin capital letter E with circumflex     |
| 203  | **`Ë`** | &Euml;   | 带分音符的拉丁文大写字母E | latin capital letter E with diaeresis      |
| 204  | **`Ì`** | &Igrave; | 带抑音符的拉丁文大写字母I | latin capital letter I with grave          |
| 205  | **`Í`** | &Iacute; | 带锐音符的拉丁文大写字母I | latin capital letter I with acute          |
| 206  | **`Î`** | &Icirc;  | 带上圆圈的拉丁文大写字母I | latin capital letter I with circumflex     |
| 207  | **`Ï`** | &Iuml;   | 带分音符的拉丁文大写字母I | latin capital letter I with diaeresis      |
| 208  | **`Ð`** | &ETH;    | 拉丁文大写字母ETH         | latin capital letter ETH                   |
| 209  | **`Ñ`** | &Ntilde; | 带波浪号的拉丁文大写字母N | latin capital letter N with tilde          |
| 210  | **`Ò`** | &Ograve; | 带抑音符的拉丁文大写字母O | latin capital letter O with grave          |
| 211  | **`Ó`** | &Oacute; | 带锐音符的拉丁文大写字母O | latin capital letter O with acute          |
| 212  | **`Ô`** | &Ocirc;  | 带扬抑符的拉丁文大写字母O | latin capital letter O with circumflex     |
| 213  | **`Õ`** | &Otilde; | 带波浪号的拉丁文大写字母O | latin capital letter O with tilde          |
| 214  | **`Ö`** | &Ouml;   | 带分音符的拉丁文大写字母O | latin capital letter O with diaeresis      |
| 215  | `×`     | &times;  | 乘号                      | multiplication sign                        |
| 216  | **`Ø`** | &Oslash; | 带斜杠的拉丁文大写字母O   | latin capital letter O with slash          |
| 217  | **`Ù`** | &Ugrave; | 带抑音符的拉丁文大写字母U | latin capital letter U with grave          |
| 218  | **`Ú`** | &Uacute; | 带锐音符的拉丁文大写字母U | latin capital letter U with acute          |
| 219  | **`Û`** | &Ucirc;  | 带上圆圈的拉丁文大写字母U | latin capital letter U with circumflex     |
| 220  | **`Ü`** | &Uuml;   | 带分音符的拉丁文大写字母U | latin capital letter U with diaeresis      |
| 221  | **`Ý`** | &Yacute; | 带锐音符的拉丁文大写字母Y | latin capital letter Y with acute          |
| 222  | **`Þ`** | &THORN;  | 拉丁文大写字母THORN       | latin capital letter THORN                 |
| 223  | **`ß`** | &szlig;  | 拉丁文小写字母sharp s     | latin small letter sharp s, ess-zed        |
| 224  | **`à`** | &agrave; | 带抑音符的拉丁文小写字母a | latin small letter a with grave            |
| 225  | **`á`** | &aacute; | 带锐音符的拉丁文小写字母a | latin small letter a with acute            |
| 226  | **`â`** | &acirc;  | 带扬抑符的拉丁文小写字母a | latin small letter a with circumflex       |
| 227  | **`ã`** | &atilde; | 带波浪号的拉丁文小写字母a | latin small letter a with tilde            |
| 228  | **`ä`** | &auml;   | 带分音符的拉丁文小写字母a | latin small letter a with diaeresis        |
| 229  | **`å`** | &aring;  | 带上圆圈的拉丁文小写字母a | latin small letter a with ring above       |
| 230  | **`æ`** | &aelig;  | 拉丁文小写字母AE          | latin small letter ae                      |
| 231  | **`ç`** | &ccedil; | 带下加符的拉丁文小写字母c | latin small letter c with cedilla          |
| 232  | **`è`** | &egrave; | 带抑音符的拉丁文小写字母e | latin small letter e with grave            |
| 233  | **`é`** | &eacute; | 带锐音符的拉丁文小写字母e | latin small letter e with acute            |
| 234  | **`ê`** | &ecirc;  | 带上圆圈的拉丁文小写字母e | latin small letter e with circumflex       |
| 235  | **`ë`** | &euml;   | 带分音符的拉丁文小写字母e | latin small letter e with diaeresis        |
| 236  | **`ì`** | &igrave; | 带抑音符的拉丁文小写字母i | latin small letter i with grave            |
| 237  | **`í`** | &iacute; | 带锐音符的拉丁文小写字母i | latin small letter i with acute            |
| 238  | **`î`** | &icirc;  | 带上圆圈的拉丁文小写字母i | latin small letter i with circumflex       |
| 239  | **`ï`** | &iuml;   | 带分音符的拉丁文小写字母i | latin small letter i with diaeresis        |
| 240  | **`ð`** | &eth;    | 拉丁文小写字母eth         | latin small letter eth                     |
| 241  | **`ñ`** | &ntilde; | 带波浪号的拉丁文小写字母n | latin small letter n with tilde            |
| 242  | **`ò`** | &ograve; | 带抑音符的拉丁文小写字母o | latin small letter o with grave            |
| 243  | **`ó`** | &oacute; | 带锐音符的拉丁文小写字母o | latin small letter o with acute            |
| 244  | **`ô`** | &ocirc;  | 带扬抑符的拉丁文小写字母o | latin small letter o with circumflex       |
| 245  | **`õ`** | &otilde; | 带波浪号的拉丁文小写字母o | latin small letter o with tilde            |
| 246  | **`ö`** | &ouml;   | 带分音符的拉丁文小写字母o | latin small letter o with diaeresis        |
| 247  | `÷`     | &divide; | 除号                      | division sign                              |
| 248  | **`ø`** | &oslash; | 带斜杠的拉丁文小写字母o   | latin small letter o with slash            |
| 249  | **`ù`** | &ugrave; | 带抑音符的拉丁文小写字母u | latin small letter u with grave            |
| 250  | **`ú`** | &uacute; | 带锐音符的拉丁文小写字母u | latin small letter u with acute            |
| 251  | **`û`** | &ucirc;  | 带上圆圈的拉丁文小写字母u | latin small letter u with circumflex       |
| 252  | **`ü`** | &uuml;   | 带分音符的拉丁文小写字母u | latin small letter u with diaeresis        |
| 253  | **`ý`** | &yacute; | 带锐音符的拉丁文小写字母y | latin small letter y with acute            |
| 254  | **`þ`** | &thorn;  | 拉丁文小写字母thorn       | latin small letter thorn                   |
| 255  | **`ÿ`** | &yuml;   | 带分音符的拉丁文小写字母y | latin small letter y with diaeresis        |
