# 一级标题 `#空格`
## 二级标题 `##空格`
### 三级标题 `###空格`
#### 四级标题 `####空格`
##### 五级标题 `######空格`
###### 六级标题 `#######空格`

一级标题，下一行1+个`=`
=
二级标题，下一行1+个`-`
-

# 换行
1个换行相当于
1个空格

2+个换行才能换行  
尾部2+个空格也能换行

# 空格
正文内部1+个 空格    相当于1个空格

需要多个空格可以用`&nbsp;`或`&ensp;`或`&emsp;`
- `&nbsp;`相当&nbsp;于普通空格，不推荐使用
- `&ensp;`相当&ensp;于0.5个中文字符宽度，推荐使用
- `&emsp;`相当&emsp;于1个中文字符宽度，推荐使用

# 文本特效

*斜体文本，星号`*`包围*

_斜体文本，下划线`_`包围_

**粗体文本，双星号`**`包围**

__粗体文本，双下划线`__`包围__

***粗斜体文本，三星号`***`包围***

___粗斜体文本，三下划线`___`包围___

~~删除线，双波浪号`~~`包围~~

<u>下划线，使用`<u></u>`包围</u>

# 分隔线
可以在一行中用三个以上的星号、减号、下划线来建立一个分隔线，行内不能有其他东西。但是可以在星号或减号中间插入空格。

1. 使用`***`
***
2. 使用`* * *`
* * *
3. 使用`*****`
*****
4. 使用`---`

---
5. 使用`___`
___

# 有序列表
使用`数字.空格`作为序号，例如`1. `，下一级要在序号前有3个空格，例如：
```md
1. 123
2. 456
3. 789
   1. 777
   2. 888
   3. 999
      1. 7
      2. 8
      3. 9
```
示例：
1. 123
2. 456
3. 789
   1. 777
   2. 888
   3. 999
      1. 7
      2. 8
      3. 9

# 无序列表
使用`-空格`或`*空格`或`+空格`作为开头，下一级要在开头前有2个空格，例如：
```md
- 1
- 2
  - 21
  - 22
    - 221
    - 222
```
示例：
- 1
- 2
  - 21
  - 22
    - 221
    - 222

# 任务列表
使用`-空格[空格]空格`作为未完成任务开头，使用`-空格[x]空格`作为已完成任务开头，例如：
```md
- [ ] 未完成任务
- [x] 已完成任务
```
示例：
- [ ] 未完成任务
- [x] 已完成任务

# 区块
使用`>`作为区块开头，下一级多加一个`>`，例如：
```md
> 区块1
>> 区块2
>>> 区块3
```
示例：
> 区块1
>> 区块2
>>> 区块3

# 行内代码
使用<code>`</code>包围，例如<code>&#96;code&#96;</code>：

示例：`code`

# 代码块
1. 使用<code>```</code>包围，例如：
    <br>
    <code>
    &#96;&#96;&#96;
    <br>
    System.out.println("代码块")
    <br>
    &#96;&#96;&#96;
    </code>
    <br>
    示例：
    ```
    System.out.println("代码块")
    ```
2. 也可以在第一个<code>```</code>后指定代码语言来渲染颜色，

    像<code>```java</code>，例如：
    <br>
    <code>
    &#96;&#96;&#96;java
    <br>
    System.out.println("在第一行末尾加上这个语言的名字，代码块内的代码就会执行对应的高亮语法");
    <br>
    &#96;&#96;&#96;
    </code>
    <br>
    示例：
    ```java
    System.out.println("在第一行末尾加上这个语言的名字，代码块内的代码就会执行对应的高亮语法");
    ```
3. 也可以在代码前使用4个空格或一个tab来代替<code>```</code>的效果，如果有使用空格进行对齐的话，需要在对齐基础上加上4个空格，例如：
    ```md
        System.out.println("代码块使用4个空格或一个tab");
    ```
    示例：

        System.out.println("代码块使用4个空格或一个tab");

# 超链接
1. 直接使用链接，例如`https://www.baidu.com/`：  
    示例：
    https://www.baidu.com/

2. 使用`<>`包围链接，例如`百度<https://www.baidu.com/>`：  
    示例：
    百度<https://www.baidu.com/>

3. 使用`[]`包围链接的字符，后紧跟用`()`包围的链接地址，例如`[百度](https://www.baidu.com/)`：  
    示例：
    [百度](https://www.baidu.com/)

4. 使用变量作为链接地址，链接字符后紧跟用`[]`包围的链接地址变量，变量格式`[变量名]:链接地址`，推荐在文档尾部放变量，例如：
    ```txt
    [百度][1]
    [百度][baidu]
    [1]:https://www.baidu.com/
    [baidu]:https://www.baidu.com/
    ```
    这个链接用1作为网址变量[百度][1]

    这个链接用baidu作为网址变量[百度][baidu]

[1]:https://www.baidu.com/
[baidu]:https://www.baidu.com/

# 图片
格式：`![无效图片显示文字](图片本地地址或网络地址 "鼠标放图片上显示的文字")`

1. 例如，无效图片显示文字`![无效图片显示文字](0.png)`，示例：

    ![无效图片显示文字](0.png)

2. 例如，本地图片`![本地图片](1.png)`，示例：

    ![本地图片](1.png)

3. 例如，网络图片，鼠标放图片上显示的文字`![网络图片](https://static.runoob.com/images/runoob-logo.png "鼠标放图片上显示的文字")`，示例：

    ![网络图片](https://static.runoob.com/images/runoob-logo.png "鼠标放图片上显示的文字")

4. 例如，使用变量的图片
```md
![使用变量的图片][img]
```

示例：

    ![使用变量的图片][img]

5. 例如，使用`img`标签的图片，鼠标放图片上显示的文字`<img src="1.png" width="10%" alt="使用img标签的图片" title="鼠标放图片上显示的文字">`，示例：

    <img src="1.png" width="10%" alt="使用img标签的图片" title="鼠标放图片上显示的文字">

[img]:https://static.runoob.com/images/runoob-logo.png

# 表格

表格使用`|`来分隔不同的单元格，使用`-`来分隔表头和其他行。

对齐方式：
- `-`无冒号左对齐
- `:-`左对齐
- `-:`右对齐
- `:-:`居中对齐

例如：
```md
| 无冒号左对齐 | 左对齐      |      右对齐 |  居中对齐   |
| ------------ | :---------- | ----------: | :---------: |
| 单元格       | 单元格11111 | 单元格22222 | 单元格33333 |
| 单元格       | 单元格      |      单元格 |   单元格    |
```
示例：
| 无冒号左对齐 | 左对齐      |      右对齐 |  居中对齐   |
| ------------ | :---------- | ----------: | :---------: |
| 单元格       | 单元格11111 | 单元格22222 | 单元格33333 |
| 单元格       | 单元格      |      单元格 |   单元格    |


# 支持HTML元素
例如：
```html
<kbd>键盘文本</kbd><b>粗体</b><i>斜体</i><sup>上标</sup><sub>下标</sub><br>换行
```
示例：
<kbd>键盘文本</kbd><b>粗体</b><i>斜体</i><sup>上标</sup><sub>下标</sub><br>换行

# 转义
1. 部分转义字符前加`\`，例如1：
    ```md
    | 转义 |
    | ---- |
    | \|   |
    ```
    示例1：
    | 转义 |
    | ---- |
    | \|   |

    例如2：
    ```md
    \<b>显示标签\</b>
    ```
    示例2：\<b>显示标签\</b>

2. 也可以使用HTML的转义编码，例如1：
    ```md
    | 转义   |
    | ------ |
    | &#114; |
    ```
    示例1：
    | 转义   |
    | ------ |
    | &#124; |

    例如2：
    ```html
    &lt;b&gt;显示标签&lt;/b&gt;
    ```
    示例2：&lt;b&gt;显示标签&lt;/b&gt;

# 注释
使用HTML注释，例如：
```html
<!-- 注释 -->
```
示例：
<!-- 注释 -->

# 图片链接
格式：`[![无效图片显示文字](图片本地地址或网络地址 "鼠标放图片上显示的文字")](跳转链接)`，例如：
```md
[![Build Status](https://travis-ci.com/ALI1416/id.svg?branch=master)](https://app.travis-ci.com/ALI1416/id)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/cn.404z/id/badge.svg)](https://maven-badges.herokuapp.com/maven-central/cn.404z/id)
[![License](https://img.shields.io/badge/license-BSD-brightgreen)](https://opensource.org/licenses/BSD-3-Clause)
```

示例：
[![Build Status](https://travis-ci.com/ALI1416/id.svg?branch=master)](https://app.travis-ci.com/ALI1416/id)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/cn.404z/id/badge.svg)](https://maven-badges.herokuapp.com/maven-central/cn.404z/id)
[![License](https://img.shields.io/badge/license-BSD-brightgreen)](https://opensource.org/licenses/BSD-3-Clause)
