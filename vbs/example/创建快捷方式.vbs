' Author:ALI
' GitHub:https://github.com/ali1416
' Version:1.0

' 特殊文件夹SpecialFolders值如下：
' 公共桌面 AllUsersDesktop
' 公共程式 AllUsersStartMenu
' 公共程序 AllUsersPrograms
' 公共启动 AllUsersStartup
' 桌面 Desktop
' 收藏 Favorites
' 字体 Fonts
' 我的文档 MyDocuments
' 网络 NetHood
' 打印机 PrintHood
' 程序 Programs
' 最近 Recent
' 发给 SendTo
' 开始菜单 StartMenu
' 启动 Startup
' 模板 Templates
' 应用程序数据 AppData

set ws=CreateObject("WScript.Shell")
name="aaaa"
set shortcut=ws.CreateShortcut(ws.SpecialFolders("Desktop") & "\" & name & ".lnk")
shortcut.targetPath="D:\Program Files\Microsoft VS Code\Code.exe"
shortcut.arguments=""
shortcut.save
