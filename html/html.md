# HTML

## DOCTYPE
`<!DOCTYPE html>`标签位于第一行，用于声明文档版本是HTML5

## html
`<html lang="zh-cmn-Hans">`和`</html>`标签限定了文档的开始和结束  
其中`lang="zh-cmn-Hans"`表示使用语言是`中国-普通话-简体`

## head
文档头部，可以包含`<base>`,`<link>`,`<meta>`,`<script>`,`<style>`,`<title>`标签

## body
文档内容  
默认css：
```css
body {
    display: block;
    margin: 8px;
}
```
其中字体大小和样式，与浏览器设置有关

## title
标签页标题

## base
页面中所有链接的默认地址或默认目标，包括`<a>`,`<img>`,`<link>`,`<form>`标签  
属性`href="https://www.baidu.com"`定义页面中所有相对链接的基准URL  
属性`target="_blank"`定义在何处打开页面中所有的链接  
`target`的值有：
- `_blank` : 新窗口
- `_parent` : 父窗口
- `_self` : 当前框架内
- `_top` : 当前窗口
- `框架名` : 指定框架内

## link
文档与外部资源的关系  


## h1-h6
文档标题  
默认css：
```css
h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
h4 {
    display: block;
    margin-block-start: 1.33em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
h5 {
    display: block;
    font-size: 0.83em;
    margin-block-start: 1.67em;
    margin-block-end: 1.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
h6 {
    display: block;
    font-size: 0.67em;
    margin-block-start: 2.33em;
    margin-block-end: 2.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
```

## 