# svg

## 形状
### 画布 svg
**属性**
- width : 宽度
  - 默认值 : 300
  - 100% : 屏幕宽度
- height : 高度
  - 默认值 : 150
  - 100% : 150
- viewBox(x,y,width,height) : 调整画布坐标和大小
  - x : 向左平移x单位
  - y : 向上平移y单位
  - width : 截取画布宽度，并缩放到画布实际宽度
  - height : 截取画布高度，并缩放到画布实际高度

**示例**
- 默认:宽300,高150  
<svg style="background-color:#6cf"></svg>
- 宽400,高100  
<svg width="400" height="100" style="background-color:#6cf"></svg>
- 宽100%,高100%  
<svg width="100%" height="100%" style="background-color:#6cf"></svg>
- viewBox  
  - 普通镶嵌(无viewBox)  
<svg style="background-color:#6cf">
  <svg width="100" height="100">
    <rect width="100%" height="100%"/>
    <rect x="20" y="30" width="20" height="20" fill="red"/>
</svg>
  <rect x="150" width="20" height="20"/>
</svg>
  - 放大(viewBox的宽高小于svg的宽高，只截取左上角部分)  
<svg style="background-color:#6cf">
  <svg width="100" height="100" viewBox="0 0 50 50">
    <rect width="100%" height="100%"/>
    <rect x="20" y="30" width="20" height="20" fill="red"/>
</svg>
  <rect x="150" width="20" height="20"/>
</svg>
  - 缩小(viewBox的宽高大于svg的宽高，右下角被填充)  
<svg style="background-color:#6cf">
  <svg width="100" height="100" viewBox="0 0 200 200">
    <rect width="100%" height="100%"/>
    <rect x="20" y="30" width="20" height="20" fill="red"/>
</svg>
  <rect x="150" width="20" height="20"/>
</svg>
  - 平移(viewBox的xy为正数，向上和左平移，画布仅剩左上角)  
<svg style="background-color:#6cf">
  <svg width="100" height="100" viewBox="10 20 50 50">
    <rect width="100%" height="100%"/>
    <rect x="20" y="30" width="20" height="20" fill="red"/>
</svg>
  <rect x="150" width="20" height="20"/>
</svg>
  - 平移(viewBox的xy为负数，向下和右平移，画布仅剩右下角)  
<svg style="background-color:#6cf">
  <svg width="100" height="100" viewBox="-5 -10 50 50">
    <rect width="100%" height="100%"/>
    <rect x="20" y="30" width="20" height="20" fill="red"/>
</svg>
  <rect x="150" width="20" height="20"/>
</svg>
  - 未指定画布实际宽高(从父画布中心开始放大，触边停止)  
<svg style="background-color:#6cf">
  <svg viewBox="0 0 100 100">
    <rect width="100%" height="100%"/>
    <rect x="20" y="30" width="20" height="20" fill="red"/>
</svg>
  <rect x="250" width="20" height="20"/>
</svg>

### 矩形 rect
**属性**
- x : 距离左侧长度
  - 默认值 : 0
  - 100% : 父元素宽度
- y : 距离顶部高度
  - 默认值 : 0
  - 100% : 父元素高度
- width : 宽度
  - 100% : 父元素宽度
- height : 高度
  - 100% : 父元素高度
- rx : 水平圆角半径
  - 默认值 : 0(直角)
  - 范围 : 0-100
- ry : 垂直圆角半径
  - 默认值 : 0(直角)
  - 范围 : 0-100

**示例**
- 距离左侧长度40,距离顶部高度20,宽100,高60  
<svg style="background-color:#6cf">
   <rect x="40" y="20" width="100" height="60"/>
</svg>

### 圆形 circle
**属性**
- cx : 圆点的x坐标
  - 默认值 : 0
  - 100% : 父元素宽度
- cy : 圆点的y坐标
  - 默认值 : 0
  - 100% : 父元素高度
- r : 圆的半径
  - 100% : 237.17px

**示例**
- 圆点的坐标(60,50),半径30  
<svg style="background-color:#6cf">
   <circle cx="60" cy="50" r="30"/>
</svg>

### 椭圆 ellipse
**属性**
- cx : 椭圆中心的x坐标
  - 默认值 : 0
  - 100% : 父元素宽度
- cy : 椭圆中心的y坐标
  - 默认值 : 0
  - 100% : 父元素高度
- rx : 水平半径
  - 100% : 父元素宽度
- ry : 垂直半径
  - 100% : 父元素高度

**示例**
- 椭圆中心的坐标(130,80),水平半径40,垂直半径60  
<svg style="background-color:#6cf">
   <ellipse cx="130" cy="80" rx="40" ry="60"/>
</svg>

### 直线 line
**属性**
- x1 : 线条开始的x坐标
  - 默认值 : 0
  - 100% : 父元素宽度
- y1 : 线条开始的y坐标
  - 默认值 : 0
  - 100% : 父元素高度
- x2 : 线条结束的x坐标
  - 默认值 : 0
  - 100% : 父元素宽度
- y2 : 线条结束的y坐标
  - 默认值 : 0
  - 100% : 父元素高度

注意：必须设置颜色，例如`style="stroke:black"`

**示例**
- 线条开始的坐标(10,80),线条结束的坐标(290,120)  
<svg style="background-color:#6cf">
   <line x1="10" y1="80" x2="290" y2="120" style="stroke:black"/>
</svg>

### 多边形 polygon
**属性**
- point : 多边形每个点的xy坐标(xy坐标用逗号隔开，每个点用空格隔开)

**示例**
- 多边形每个点的坐标(200,10),(250,110),(50,140)  
<svg style="background-color:#6cf">
   <polygon points="200,10 250,110 50,140"/>
</svg>

### 多段线 polyline
**属性**
- point : 多线段每个点的xy坐标(xy坐标用逗号隔开，每个点用空格隔开)

**示例**
- 多线段每个点的坐标(20,20),(40,25),(60,40),(80,120),(120,140),(200,180)  
<svg style="background-color:#6cf">
   <polyline points="20,20 40,25 60,40 80,120 120,140 200,180" style="fill:none;stroke:black"/>
</svg>

### 路径 path
**属性**
- d : 命令
  - M : 移动
  - L : 线段
  - H : 水平线
  - V : 垂直线
  - A : 椭圆弧线
  - Q : 二次贝塞尔曲线
  - C : 三次贝塞尔曲线
  - T : 平滑二次贝塞尔曲线
  - S : 平滑三次贝塞尔曲线
  - Z : 闭合

注意：命令区分大小写，大写表示绝对定位，小写表示相对定位。

**示例**
- 移动M、线段L、闭合Z：从(150,0)开始,画线段到(75,200),再到(225,200),闭合曲线  
<svg style="background-color:#6cf">
  <path d="M150 0 L75 200 L225 200 Z" />
</svg>
- 水平线H、垂直线V、相对：从(40,100)开始,画垂直线段200单位,再画水平线段-80单位,相对移动(-40,40)单位,闭合曲线  
<svg style="background-color:#6cf">
  <path d="M40 100 h 200 v -80 l -40 40 Z" />
</svg>
- 椭圆弧线A：xy轴半径、x轴旋转角度、取的角度大小(0小角度弧，1大角度弧)、弧线方向(0从起点到终点沿逆时针画弧，1顺时针)、弧线终点xy坐标  
<svg width="320" height="320" style="background-color:#6cf">
  <path d="M10 315
           L 110 215
           A 30 50, 0, 0 1, 162.55 162.45
           L 172.55 152.45
           A 30 50, -45, 0 1, 215.1 109.9
           L 315 10"
        stroke="black" fill="green" stroke-width="2" fill-opacity="0.5"/>
</svg>
- 二次贝塞尔曲线Q、平滑二次贝塞尔曲线T：Q控制点坐标xy、终点坐标xy，T终点坐标xy(T前必须有Q或T，前面的终点可以计算出该T的控制点)  
<svg style="background-color:#6cf">
  <path d="M10 80 Q 52.5 10, 95 80 T 180 80" stroke="black" stroke-width="2" fill="none"/>
</svg>
- 三次贝塞尔曲线C、平滑三次贝塞尔曲线S：C起点控制点坐标xy、终点控制点坐标xy、终点坐标xy，S终点控制点坐标xy、终点坐标xy(S前必须有C或S，前面的终点可以计算出该S的起点控制点)  
<svg style="background-color:#6cf">
  <path d="M10 80 C 40 10, 65 10, 95 80 S 150 150, 180 80" stroke="black" stroke-width="2" fill="none"/>
</svg>

## 文本
### 文本 text
**属性**
- x : 文本左侧距离父元素左侧长度
  - 默认值 : 0
  - 100% : 父元素宽度
- y : 文本底部距离父元素顶部高度(需要设置大于字体高度的值，要不然会看不到)
  - 默认值 : 0
  - 100% : 父元素高度
- dx[] : 每个字符x坐标偏移量(剩余字符偏移量为0)
- dy[] : 每个字符y坐标偏移量(剩余字符偏移量为0)
- rotate : 所有字符旋转角度
- rotate[] : 每个字符旋转角度(剩余字符旋转角度为尾值)
- textLength : 字符串总长度

**示例**
- 红色：文本左侧距离父元素左侧长度0,文本底部距离父元素顶部高度20
- 蓝色：每个字符x坐标偏移量分别为10 30 40，每个字符y坐标偏移量分别为40 20 20
- 绿色：所有字符旋转角度为45
- 白色：每个字符旋转角度分别为10 20 60
- 灰色：字符串总长度小于字符串实际长度，字符串被压缩
- 粉色：字符串总长度大于字符串实际长度，字符串被拉伸  
<svg style="background-color:#6cf">
   <text x="0" y="20" fill="red">SVG图片</text>
   <text dx="10 30 40" dy="40 20 20" fill="blue">SVG图片</text>
   <text x="20" y="80" fill="green" rotate="45">SVG图片</text>
   <text x="30" y="120" fill="white" rotate="10 20 60">SVG图片</text>
   <text x="150" y="20" fill="grey" textLength="40">SVG图片</text>
   <text x="150" y="60" fill="pink" textLength="100">SVG图片</text>
</svg>

### 块 tspan
**元素**
- tspan : 对文本块单独设置属性

**示例**
- 红色粗体  
<svg style="background-color:#6cf">
  <text x="30" y="50">
    This is
    <tspan font-weight="bold" fill="red">bold and red</tspan>
  </text>
</svg>

### 文本路径 textPath
**属性**
- xlink:href : 引用链接

**示例**
- 文本在曲线内部显示  
<svg style="background-color:#6cf">
<path id="my_path" d="M70,20 a1,1 0 0,0 150,0" fill="none" stroke="black"/>
<text>
  <textPath xlink:href="#my_path">This text follows a curve.</textPath>
</text>
</svg>

## 渐变
**公共元素**
- stop : 终止
  - offset : 偏移位置
    - 默认值 : 0%(左侧)
    - 范围 : 0%-100%
  - stop-color : 颜色
    - 默认值 : #000(黑色)
  - stop-opacity : 透明度
    - 默认值 : 1(不透明)
    - 范围 : 0-1

**公共属性**
- xlink:href : 引用另一个渐变的stop
- spreadMethod : 渐变过程
  - pad : 当渐变到达终点时，最终的偏移颜色被用于填充对象剩下的空间(默认)
  - reflect : 偏移位置从0%到100%，再从100%再到0%，依次循环
  - repeat : 偏移位置从0%到100%，依次循环
- gradientUnits : 渐变单位
  - objectBoundingBox : 数值属性使用占比(0-1)(默认)
  - userSpaceOnUse : 数值属性使用绝对定位
- gradientTransform : 渐变

### 线性渐变 linearGradient
**属性**
- x1,x2,y1,y2 : 倾斜角度矩阵
  - 默认值 : 0,1,0,0(0度)
  - 45度 : 0,1,0,1
  - 90度 : 0,0,0,1
  - 135度 : 1,0,0,1
  - 180度 : 1,0,0,0
  - -45度 : 0,1,1,0
  - -90度 : 0,0,1,0
  - -135度 : 1,0,1,0

**示例**
- 水平线性渐变：使用css显示
- 垂直线性渐变：使用svg显示  
<svg style="background-color:#6cf">
  <defs>
    <style>
      #rect1 { fill: url(#Gradient1); }
      .stop1 { stop-color: red; }
      .stop2 { stop-color: black; stop-opacity: 0; }
      .stop3 { stop-color: blue; }
    </style>
    <linearGradient id="Gradient1">
      <stop class="stop1" offset="0%"/>
      <stop class="stop2" offset="50%"/>
      <stop class="stop3" offset="100%"/>
    </linearGradient>
    <linearGradient id="Gradient2" x1="1" x2="0" y1="0" y2="0">
      <stop offset="0%" stop-color="red"/>
      <stop offset="50%" stop-color="black" stop-opacity="0"/>
      <stop offset="100%" stop-color="blue"/>
    </linearGradient>
  </defs>
  <rect id="rect1" x="20" y="20" rx="15" ry="15" width="100" height="100"/>
  <rect x="180" y="20" rx="15" ry="15" width="100" height="100" fill="url(#Gradient2)"/>
</svg>

### 径向渐变 radialGradient
**属性**
- cx,cy : 圆心xy坐标在xy轴所占最大长度的比例
  - 默认值 : 0.5(一半)
  - 范围 : 0-1
- fx,fy : 焦点xy坐标所占xy轴最大长度的比例
  - 默认值 : 圆心(cx,cy)
  - 范围 : 0-1
- r : (椭)圆半径所占xy轴最大长度的比例(xy不相同，会变成椭圆)
  - 默认值 : 0.5(一半)
  - 范围 : 0-1

**示例**
- 径向渐变成椭圆
- 径向渐变成圆
- 焦点不在圆心
- 渐变过程为reflect
- 渐变过程为repeat
- 使用绝对定位  
<svg width="420" height="300" style="background-color:#6cf">
  <defs>
    <radialGradient id="RadialGradient1">
      <stop offset="0%" stop-color="red"/>
      <stop offset="100%" stop-color="blue"/>
    </radialGradient>
    <radialGradient id="RadialGradient2" cx="0.25" cy="0.25" r="0.25">
      <stop offset="0%" stop-color="red"/>
      <stop offset="100%" stop-color="blue"/>
    </radialGradient>
    <radialGradient id="RadialGradient3" xlink:href="#RadialGradient1" fx="0.25" fy="0.25">
    </radialGradient>
    <radialGradient id="RadialGradient4" xlink:href="#RadialGradient1" r="0.1" spreadMethod="reflect">
    <radialGradient id="RadialGradient5" xlink:href="#RadialGradient1" r="0.1" spreadMethod="repeat">
    <radialGradient id="RadialGradient6" xlink:href="#RadialGradient1" cx="370" cy="170" r="20" fx="370" fy="170" gradientUnits="userSpaceOnUse">
    </radialGradient>
</defs>
  <rect x="20" y="20" rx="15" ry="15" width="140" height="100" fill="url(#RadialGradient1)"/>
  <rect x="180" y="20" rx="15" ry="15" width="100" height="100" fill="url(#RadialGradient2)"/>
  <rect x="300" y="20" rx="15" ry="15" width="100" height="100" fill="url(#RadialGradient3)"/>
  <rect x="20" y="140" rx="15" ry="15" width="140" height="140" fill="url(#RadialGradient4)"/>
  <rect x="180" y="140" rx="15" ry="15" width="140" height="140" fill="url(#RadialGradient5)"/>
  <rect x="340" y="140" rx="15" ry="15" width="60" height="60" fill="url(#RadialGradient6)"/>
</svg>

## 滤镜

## 动画

## 其他元素
### 图片 image
**属性**
- xlink:href : 引用链接
- x : 距离左侧长度
  - 默认值 : 0
  - 100% : 父元素宽度
- y : 距离顶部高度
  - 默认值 : 0
  - 100% : 父元素高度
- width : 宽度
  - 默认值 : 图片实际宽度
  - 100% : 父元素宽度
- height : 高度
  - 默认值 : 图片实际高度
  - 100% : 父元素高度

**示例**
- 插入一个图片到svg中  
<svg style="background-color:#6cf">
  <image xlink:href="img\1.png" x="50" y="20" height="100" width="100"/>
</svg>

### 渲染HTML foreignObject
**属性**
- x : 距离左侧长度
  - 默认值 : 0
  - 100% : 父元素宽度
- y : 距离顶部高度
  - 默认值 : 0
  - 100% : 父元素高度
- width : 宽度
  - 默认值 : 0
  - 100% : 父元素宽度
- height : 高度
  - 默认值 : 0
  - 100% : 父元素高度

**示例**
- 嵌入HTML文本  
<svg style="background-color:#6cf">
  <style>
    polygon { fill: black }
    div {
      color: white;
      font:18px serif;
      height: 100%;
      overflow: auto;
    }
  </style>
  <polygon points="5,5 295,10 285,135 10,145" />
  <foreignObject x="20" y="20" width="260" height="100">
    <div>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit.
      Sed mollis mollis mi ut ultricies. Nullam magna ipsum,
      porta vel dui convallis, rutrum imperdiet eros. Aliquam
      erat volutpat.
    </div>
  </foreignObject>
</svg>

### 模板 pattern
**属性**
- x : 向右偏移模板个数
  - 默认值 : 0
  - 范围 : 0-width
- y : 向下偏移模板个数
  - 默认值 : 0
  - 范围 : 0-height
- width : 模板占父元素宽度比例
  - 默认值 : 0
  - 范围 : 0-1
- height : 模板占父元素高度比例
  - 默认值 : 0
  - 范围 : 0-1
- patternUnits : 模板单位
  - objectBoundingBox : 数值属性使用占比(0-1)(默认)
  - userSpaceOnUse : 数值属性使用绝对定位

**示例**
- pattern内组合图案最大宽高和父元素宽高所成的比例等于width和height时，完美平铺。例如组合图案宽50，父元素宽200，比例是0.25，width也是0.25。
- pattern比例小时图案被压缩，大时被拉伸。xy上下左右平移  
<svg width="450" height="200" style="background-color:#6cf">
  <defs>
    <linearGradient id="PatternGradient1">
      <stop offset="15%" stop-color="white"/>
      <stop offset="95%" stop-color="blue"/>
    </linearGradient>
    <linearGradient id="PatternGradient2" x1="0" x2="0" y1="0" y2="1">
      <stop offset="15%" stop-color="red"/>
      <stop offset="95%" stop-color="orange"/>
    </linearGradient>
    <pattern id="Pattern1" x="0" y="0" width=".25" height=".25">
      <rect x="0" y="0" width="50" height="50" fill="skyblue"/>
      <rect x="0" y="0" width="25" height="25" fill="url(#PatternGradient2)"/>
      <circle cx="25" cy="25" r="20" fill="url(#PatternGradient1)" fill-opacity="0.5"/>
    </pattern>
    <pattern id="Pattern2" x="-0.05" y="0.05" width=".2" height=".3">
      <rect x="0" y="0" width="50" height="50" fill="skyblue"/>
      <rect x="0" y="0" width="25" height="25" fill="url(#PatternGradient2)"/>
      <circle cx="25" cy="25" r="20" fill="url(#PatternGradient1)" fill-opacity="0.5"/>
    </pattern>
  </defs>
  <rect fill="url(#Pattern1)" stroke="black" width="200" height="200"/>
  <rect x="250" fill="url(#Pattern2)" stroke="black" width="200" height="200"/>
</svg>

### 剪切 clip-path
**属性**
- clip-path : 剪切路径，重叠部分保留

**示例**
- 绘制圆心为(100,100)半径为100的圆，只留(0,0,200,100)这部分  
<svg style="background-color:#6cf">
  <defs>
    <clipPath id="cut-off-bottom">
      <rect x="0" y="0" width="200" height="100"/>
    </clipPath>
  </defs>
  <circle cx="100" cy="100" r="100" clip-path="url(#cut-off-bottom)"/>
</svg>

### 遮罩 mask
**元素**
- mask : 指定可见和透明度

**示例**
- 绘制由绿到红的渐变色  
<svg width="200" height="200">
  <defs>
    <linearGradient id="Gradient">
      <stop offset="0" stop-color="white" stop-opacity="0"/>
      <stop offset="1" stop-color="white" stop-opacity="1"/>
    </linearGradient>
    <mask id="Mask">
      <rect x="0" y="0" width="200" height="200" fill="url(#Gradient)"/>
    </mask>
  </defs>
  <rect x="0" y="0" width="200" height="200" fill="green"/>
  <rect x="0" y="0" width="200" height="200" fill="red" mask="url(#Mask)"/>
</svg>

### 超链接 a
**属性**
- href : 链接地址
- target : 跳转目的地
  - _self : 当前svg(默认)
  - _parent : 父窗口
  - _blank : 弹窗
  - _top : 当前网页
  - 指定名称 : 指定iframe框架内

**示例**
- 当前svg
- 弹窗
- 当前网页  
<svg style="background-color:#6cf">
  <a href="https://www.baidu.com" target="_self">
    <text x="0" y="20">当前svg</text>
  </a>
  <a href="https://www.baidu.com" target="_blank">
    <text x="0" y="60">弹窗</text>
  </a>
  <a href="https://www.baidu.com" target="_top">
    <text x="0" y="100">当前网页</text>
  </a>
</svg>

### 定义 defs
**元素**
- defs : 定义图形对象以备后用

**示例**
- 定义一个linearGradient并指定id，使用`url(#id名称)`引用  
<svg style="background-color:#6cf">
  <defs>
    <linearGradient id="Gradient01">
      <stop offset="20%" stop-color="#39F"/>
      <stop offset="90%" stop-color="#F3F"/>
    </linearGradient>
  </defs>
  <rect x="10" y="10" width="280" height="130" fill="url(#Gradient01)"/>
</svg>

### 描述 desc、标题title
**元素**
- desc : 描述信息，不显示
- title : 标题，不显示

**示例**
- 描述信息，不显示  
- 标题，不显示  
<svg style="background-color:#6cf">
   <title>这是标题</title>
   <desc>描述：这是一个矩形</desc>
   <rect x="40" y="20" width="100" height="60"/>
</svg>

### 组 g、复制 use
**元素**
- g : 所有公共属性会被子元素继承
- use : 复制组
  - x : 中心距离左侧长度
    - 默认值 : 0
    - 100% : 父元素宽度
  - y : 中心距离顶部高度
    - 默认值 : 0
    - 100% : 父元素高度
  - width : 宽度(无效)
  - height : 高度(无效)

**示例**
- 所有公共属性被子元素继承
- 复制了3个圆  
<svg style="background-color:#6cf">
  <style>
    .classA {
      fill: red;
    }
  </style>
  <defs>
    <g id="Port">
      <circle r="20"/>
    </g>
  </defs>
  <g stroke="green" fill="white" stroke-width="5">
    <circle cx="40" cy="50" r="20"/>
    <circle cx="60" cy="50" r="20"/>
    <circle cx="80" cy="50" r="20"/>
    <circle cx="100" cy="50" r="20"/>
  </g>
  <use x="40" y="120" href="#Port" />
  <use x="100" y="120" href="#Port" class="classA"/>
  <use x="160" y="120" href="#Port" style="fill: blue;"/>
</svg>

### 开关 switch
**元素**
- requiredFeatures : 
- requiredExtensions : 
- systemLanguage : 系统语言

**示例**
- 根据系统语言显示不同文字  
<svg width="100%" viewBox="0 -20 100 30" style="background-color:#6cf">
   <switch>
      <text systemLanguage="zh-cn">你好</text>
      <text systemLanguage="ar">مرحبا</text>
      <text systemLanguage="de,nl">Hallo!</text>
      <text systemLanguage="en">Hello!</text>
      <text systemLanguage="en-us">Howdy!</text>
      <text systemLanguage="en-gb">Wotcha!</text>
      <text systemLanguage="en-au">G'day!</text>
      <text systemLanguage="es">Hola!</text>
      <text systemLanguage="fr">Bonjour!</text>
      <text systemLanguage="ja">こんにちは</text>
      <text>☺</text>
   </switch>
</svg>

### 视图 view
**元素**
- viewBox : 缩放
- preserveAspectRatio : 
- zoomAndPan : 
- viewTarget : 

**示例**
- 缩放图片(无效)  
<svg style="background-color:#6cf">
  <defs>
    <radialGradient id="viewGradient">
      <stop offset="0%" stop-color="#8cffa0" />
      <stop offset="100%" stop-color="#8ca0ff" />
    </radialGradient>
  </defs>
  <circle r="50" cx="180" cy="50" style="fill:url(#viewGradient)"/>
  <view id="halfSizeView" viewBox="0 0 1200 400"/>
  <view id="normalSizeView" viewBox="0 0 600 200"/>
  <view id="doubleSizeView" viewBox="0 0 300 100"/>
  <a xlink:href="#halfSizeView">
    <text x="5" y="20" font-size="20">half size</text>
  </a>
  <a xlink:href="#normalSizeView">
    <text x="5" y="40" font-size="20">normal size</text>
  </a>
  <a xlink:href="#doubleSizeView">
    <text x="5" y="60" font-size="20">double size</text>
  </a>
</svg>

## 公共属性
### 透明度 opacity
**属性**
- opacity : 透明度
  - 默认值 : 1(不透明)
  - 范围 : 0-1

**示例**
- 透明度默认不透明
- 透明度0.5  
<svg style="background-color:#6cf">
   <rect width="100" height="60"/>
   <rect x="150" width="100" height="60" opacity="0.5"/>
</svg>

### 填充颜色 fill
**属性**
- fill : 填充颜色
  - 默认值 : #000(黑色)
- fill-opacity : 填充透明度
  - 默认值 : 1(不透明)
  - 范围 : 0-1
- fill-rule : 填充规则

**示例**
- 填充颜色默认#000(黑色),透明度默认1(不透明)
- 填充颜色红色
- 透明度0.5  
<svg width="400" style="background-color:#6cf">
   <rect width="100" height="60"/>
   <rect x="150" width="100" height="60" fill="red"/>
   <rect x="300" width="100" height="60" fill-opacity="0.5"/>
</svg>

### 轮廓 stroke
**属性**
- stroke : 颜色
  - 默认值 : #000(黑色)
- stroke-width : 宽度
  - 默认值 : 1
- stroke-opacity : 轮廓透明度
  - 默认值 : 1(不透明)
  - 范围 : 0-1
- stroke-linecap : 首尾轮廓样式
  - butt : 无(默认)
  - round : 圆形
  - square : 方形
  - inherit : 继承
- stroke-linejoin : 2个轮廓之间的连接方式
  - miter : 尖角(默认)
  - round : 圆角
  - bevel : 斜角
- stroke-dasharray : 虚线
  - 每个数字用逗号隔开，数字大小代表长度，奇数位置有填充，偶数位置无填充
- stroke-dashoffset : 进入短划线模式的距离以开始短划线
- stroke-miterlimit : 斜接长度与长度之比的限制

**示例**
- 颜色默认值#000(黑色)
- 颜色红色,宽度默认值1(实际为2，透明度为0.5)
- 宽度10
- 轮廓透明度0.5  
<svg style="background-color:#6cf">
   <rect width="40" height="40"/>
   <rect x="60" y="60" width="40" height="40" stroke="red"/>
   <rect x="120" y="10" width="40" height="40" stroke="red" stroke-width="10"/>
   <rect x="200" y="60" width="40" height="40" stroke="red" stroke-width="10" stroke-opacity="0.5"/>
</svg>
- 首尾轮廓默认butt无
- 首尾轮廓round圆形
- 首尾轮廓square方形  
<svg style="background-color:#6cf">
   <line stroke-linecap="butt" x1="30" y1="30" x2="30" y2="90" stroke="black" stroke-width="20"/>
   <line stroke-linecap="round" x1="60" y1="30" x2="60" y2="90" stroke="black" stroke-width="20"/>
   <line stroke-linecap="square" x1="90" y1="30" x2="90" y2="90" stroke="black" stroke-width="20"/>
   <path d="M30,30 L30,90 M60,30 L60,90 M90,30 L90,90" stroke="white" stroke-width="2"/>
</svg>
- 连接默认mite尖角  
- 连接round圆角  
- 连接bevel斜角  
<svg width="400" style="background-color:#6cf">
  <g stroke="black" stroke-width="20" fill="none">
    <polyline points="20,60 60,20 100,60" stroke-linejoin="miter"/>
    <polyline points="140,60 180,20 220,60" stroke-linejoin="round"/>
    <polyline points="260,60 300,20 340,60" stroke-linejoin="bevel"/>
    <path d="M20,60 L60,20 L100,60 M140,60 L180,20 L220,60 M260,60 L300,20 L340,60" stroke="white" stroke-width="2"/>
  </g>
</svg>
- 虚线样式5,5
- 虚线样式10,10
- 虚线样式20,10,5,5,5,10  
<svg style="background-color:#6cf">
  <g stroke="black" stroke-width="4">
   <path stroke-dasharray="5,5" d="M5 20 l215 0"/>
   <path stroke-dasharray="10,10" d="M5 40 l215 0"/>
   <path stroke-dasharray="20,10,5,5,5,10" d="M5 60 l215 0"/>
  </g>
</svg>

### 转型 transform
**属性**
- translate(x) : 平移(x,0)
- translate(x,y) : 平移(x,y)
- rotate(a) : 绕点(0,0)旋转a度
- rotate(a,x,y) : 绕点(x,y)旋转a度
- skewX(a) : 从点(0,0)斜切x轴a度
- skewY(a) : 从点(0,0)斜切y轴a度
- scale(x) : x,y坐标缩放x倍
- scale(x,y) : x坐标缩放x倍，y坐标缩放y倍
- matrix(a,b,c,d,e,f) : 复杂变形

**示例**
- 红色：translate(10)，x坐标平移10单位
- 黑色：translate(10,40)，x坐标平移10单位，y坐标平移40单位
- 蓝色：rotate(25)，绕点(0,0)旋转25度
- 绿色：rotate(45,70,70)，绕点(70,70)旋转45度
- 粉色：skewX(45) skewY(5)，从点(0,0)斜切x轴45度，从点(0,0)斜切y轴5度
- 灰色：scale(2)，x,y坐标缩放2倍
- 白色：scale(2,4)，x坐标缩放2倍，y坐标缩放4倍  
<svg style="background-color:#6cf">
  <rect x="0" y="0" width="20" height="20" transform="translate(10)" fill="red"/>
  <rect x="0" y="0" width="20" height="20" transform="translate(10,40)" fill="black"/>
  <rect x="70" y="70" width="20" height="20" transform="rotate(25)" fill="blue"/>
  <rect x="70" y="70" width="20" height="20" transform="rotate(45,70,70)" fill="green"/>
  <rect x="70" y="70" width="20" height="20" transform="skewX(45) skewY(5)" fill="pink"/>
  <rect x="70" y="10" width="20" height="20" transform="scale(2)" fill="grey"/>
  <rect x="100" y="10" width="20" height="20" transform="scale(2,4)" fill="white"/>
</svg>
