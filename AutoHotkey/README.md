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
| &    | 组合热键连接符                   |
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

## 热字符串

```js
::ftw::Free the whales
```
