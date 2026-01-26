# HTML

## DOCTYPE

`<!DOCTYPE html>`标签位于第一行，用于声明文档版本是HTML5

## html

`<html lang="zh-cmn-Hans">`和`</html>`标签限定了文档的开始和结束  
其中`lang="zh-cmn-Hans"`表示使用语言是`中国-普通话-简体`

## head

文档头部，可以包含`<base>`、`<link>`、`<meta>`、`<script>`、`<style>`、`<title>`等标签

### base

页面中所有链接的默认地址或默认目标，包括`<a>`、`<img>`、`<link>`、`<form>`等标签  
属性`href="https://www.baidu.com"`定义页面中所有相对链接的基准URL  
属性`target="_blank"`定义在何处打开页面中所有的链接  
`target`的值有：

- `_blank` : 新窗口
- `_parent` : 父窗口
- `_self` : 当前框架内
- `_top` : 当前窗口
- `框架名` : 指定框架内

### link

定义了文档与外部资源之间的关系

- `<link rel="icon" href="favicon.ico">`：指定网页图标(默认)
- `<link rel="stylesheet" type="text/css" href="xxx.css">`：引入样式表

### meta

描述了一些基本的元数据

- `<meta charset="UTF-8">`：页面内容编码为`UTF-8`
- `<meta http-equiv="X-UA-Compatible" content="IE=edge">`：告诉IE浏览器以最高级模式渲染文档
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`：适配移动端
- `<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">`：适配移动端，禁止缩放
- `<meta name="keywords" content="HTML, CSS, XML, XHTML, JavaScript">`：定义文档关键词，用于搜索引擎
- `<meta name="description" content="Free Web tutorials on HTML and CSS">`：定义web页面描述
- `<meta name="author" content="Hege Refsnes">`：定义页面作者
- `<meta http-equiv="refresh" content="30">`：每30秒刷新页面

### script

用于加载脚本文件

- 引入脚本：`<script type="text/javascript" src="xxx.js"></script>`
- 执行本地脚本：

  ```js
  <script>
    console.log("Hello")
  </script>
  ```

### style

定义文档样式信息

清除文档默认格式：

```css
<style>
* {
  margin: 0;
  padding: 0;
  list-style-type: none;
  outline: none;
  box-sizing: border-box;
}
</script>
```

### title

网页标题
