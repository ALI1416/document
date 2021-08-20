# svg

## 元素
### 画布 svg
**属性**
- width : 宽度
  - 默认值 : 300
  - 100% : 屏幕宽度
- height : 高度
  - 默认值 : 150
  - 100% : 150

**示例**
- 默认:宽300,高150  
<svg>
   <rect width="100%" height="100%"/>
</svg>
- 宽400,高100  
<svg width="400" height="100">
   <rect width="100%" height="100%"/>
</svg>
- 宽100%,高100%  
<svg width="100%" height="100%">
   <rect width="100%" height="100%"/>
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
<svg>
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
<svg>
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
<svg>
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
<svg>
   <line x1="10" y1="80" x2="290" y2="120" style="stroke:black"/>
</svg>

### 多边形 polygon
**属性**
- point : 多边形每个角的xy坐标(xy坐标用逗号隔开，每个角用空格隔开)

**示例**
- 多边形每个角的坐标(200,10),(250,110),(50,140)
<svg>
   <polygon points="200,10 250,110 50,140"/>
</svg>

### 多段线 polyline
**属性**
- point : 多线段每个点的xy坐标(xy坐标用逗号隔开，每个点用空格隔开)

**示例**
- 多线段每个点的坐标(20,20),(40,25),(60,40),(80,120),(120,140),(200,180)
<svg>
   <polyline points="20,20 40,25 60,40 80,120 120,140 200,180" style="fill:none;stroke:black"/>
</svg>

### 路径 path
**属性**
- d : 命令
  - M : 移动
  - L : 线段
  - H : 水平线
  - V : 垂直线
  - C : 曲线
  - S : 平滑曲线
  - Q : 二次贝塞尔曲线
  - T : 平滑二次贝塞尔曲线
  - A : 椭圆
  - Z : 闭合

注意：命令区分大小写，大写表示绝对定位，小写表示相对定位。

**示例**
- 从(150,0)开始,画线段到(75,200),再到(225,200),闭合曲线
<svg>
  <path d="M150 0 L75 200 L225 200 Z" />
</svg>

### 文本 text
**属性**
- x : 文本左侧距离父元素左侧长度
  - 默认值 : 0
  - 100% : 父元素宽度
- y : 文本底部距离父元素顶部高度
  - 默认值 : 0
  - 100% : 父元素高度

**示例**
- 文本左侧距离父元素左侧长度30,文本底部距离父元素顶部高度50,文本是SVG
<svg>
   <text x="30" y="50" fill="red">SVG</text>
</svg>

## 样式
### 透明度 opacity
**属性**
- opacity : 透明度
  - 默认值 : 1(不透明)
  - 范围 : 0-1

**示例**
- 透明度默认不透明
- 透明度0.5  
<svg height="60">
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
<svg width="400" height="60">
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
- stroke-linecap : 首尾轮廓
  - butt : 无(默认)
  - round : 圆形
  - square : 方形
  - inherit : 继承
- stroke-dasharray : 虚线
  - 每个数字用逗号隔开，数字大小代表长度，奇数位置有填充，偶数位置无填充
- stroke-dashoffset : 进入短划线模式的距离以开始短划线
- stroke-miterlimit : 斜接长度与长度之比的限制

**示例**
- 颜色默认值#000(黑色),宽度15,首尾轮廓默认butt无,轮廓透明度1(不透明)
- 颜色红色,首尾轮廓round圆形
- 首尾轮廓square方形
- 宽度默认值1
- 轮廓透明度0.5  
<svg>
   <line stroke-linecap="butt" x1="30" y1="30" x2="30" y2="90" stroke="black" stroke-width="15"/>
   <line stroke-linecap="round" x1="60" y1="30" x2="60" y2="90" stroke="red" stroke-width="20"/>
   <line stroke-linecap="square" x1="90" y1="30" x2="90" y2="90" stroke="black" stroke-width="20"/>
   <line x1="120" y1="30" x2="120" y2="90" stroke="black"/>
   <line x1="150" y1="30" x2="150" y2="90" stroke="black" stroke-width="20" stroke-opacity="0.5" />
   <path d="M30,30 L30,90 M60,30 L60,90 M90,30 L90,90" stroke="white" stroke-width="2"/>
</svg>
- 虚线样式5,5
- 虚线样式10,10
- 虚线样式20,10,5,5,5,10  
<svg>
  <g stroke="black" stroke-width="4">
   <path stroke-dasharray="5,5" d="M5 20 l215 0"/>
   <path stroke-dasharray="10,10" d="M5 40 l215 0"/>
   <path stroke-dasharray="20,10,5,5,5,10" d="M5 60 l215 0"/>
  </g>
</svg>
