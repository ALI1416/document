' Author:ALI
' GitHub:https://github.com/ali1416
' Version:1.0

' 参数1：创建位置（为自定义路径Custom时，名称需要填写路径+名称+.lnk，其他位置参考特殊文件夹SpecialFolders）
' 参数2：名称
' 参数3：目标路径
' 参数4：参数（可为空）

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
if WScript.Arguments(0)="Custom" then 
    set shortcut=ws.CreateShortcut(WScript.Arguments(1))
else
    set shortcut=ws.CreateShortcut(ws.SpecialFolders(WScript.Arguments(0)) & "\" & WScript.Arguments(1) & ".lnk")
end if
shortcut.targetPath=WScript.Arguments(2)
if WScript.arguments.count=4 then
    shortcut.arguments=WScript.Arguments(3)
end if
shortcut.save
