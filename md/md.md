# 一级标题
## 二级标题
### 三级标题
#### 四级标题
##### 五级标题
###### 六级标题

一级标题，下方有一个以上=
=
二级标题，下方有一个以上-
-

正文：
换行：换1行无效，可以换2行，  
或2个以上空格加1个换行

*斜体文本*
_斜体文本_
**粗体文本**
__粗体文本__
***粗斜体文本***
___粗斜体文本___
~~删除线~~
<u>下划线</u>

分隔线：可以在一行中用三个以上的星号、减号、下划线来建立一个分隔线，行内不能有其他东西。也可以在星号或是减号中间插入空格
***
* * *
*****
---
___

有序列表
1. 123
2. 456
3. 789
   1. 777
   2. 888
   3. 999
      1. 7
      2. 8
      3. 9

无序列表*+-都可以
- 1
- 2
  - 21
  - 22
    - 221
    - 222

区块
> 区块1
> > 区块2
> > > 区块3

行内代码`code`片段

```
System.out.println("代码块")
```

```java
System.out.println("在第一行末尾加上这个语言的名字，代码块内的代码就会执行对应的高亮语法");
```

    System.out.println("代码块使用4个空格或一个tab");

百度<https://www.baidu.com/>

[百度](https://www.baidu.com/)

这个链接用1作为网址变量[百度][1]

这个链接用baidu作为网址变量[百度][baidu]

然后在文档的结尾（推荐）为变量赋值

[1]:https://www.baidu.com/
[baidu]:https://www.baidu.com/

![无效图片显示文字](0.png)
![本地图片](1.png)
![网络图片](https://static.runoob.com/images/runoob-logo.png "鼠标放图片上显示的文字")
![使用变量的图片][img]
<img src="1.png" width="10%" alt="使用img标签的图片">

[img]:https://static.runoob.com/images/runoob-logo.png

表格使用|来分隔不同的单元格，使用-来分隔表头和其他行。对齐方式-:右对齐:-左对齐:-:居中对齐。
| 左对齐      |      右对齐 |  居中对齐   |
| :---------- | ----------: | :---------: |
| 单元格11111 | 单元格22222 | 单元格33333 |
| 单元格      |      单元格 |   单元格    |

支持的HTML元素
<kbd>键盘文本</kbd><b>粗体</b><i>斜体</i><em>重要</em><sup>上标</sup><sub>下标</sub><br>换行

转义字符前加\\

也可以使用HTML的转义编码&lt;b&gt;显示标签&lt;/b&gt;

<!-- 注释 -->

[![Build Status](https://travis-ci.com/ALI1416/id.svg?branch=master)](https://app.travis-ci.com/ALI1416/id)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/cn.404z/id/badge.svg)](https://maven-badges.herokuapp.com/maven-central/cn.404z/id)
[![License](https://img.shields.io/badge/license-BSD-brightgreen)](https://opensource.org/licenses/BSD-3-Clause)
