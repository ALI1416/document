' Author:ALI
' GitHub:https://github.com/ali1416
' Version:1.0

' 特殊文件夹SpecialFolders值如下：
' ----------公共----------
' 公共桌面 AllUsersDesktop
' %Public%\Desktop
' 公共开始菜单 AllUsersStartMenu
' %ProgramData%\Microsoft\Windows\Start Menu
' 公共程序 AllUsersPrograms
' %ProgramData%\Microsoft\Windows\Start Menu\Programs
' 公共开机启动 AllUsersStartup
' %ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup
' ----------用户----------
' 桌面 Desktop
' 用户自己设置的桌面位置
' 文档 MyDocuments
' 用户自己设置的文档位置
' 应用程序数据 AppData
' %AppData%
' 开始菜单 StartMenu
' %AppData%\Microsoft\Windows\Start Menu
' 程序 Programs
' %AppData%\Microsoft\Windows\Start Menu\Programs
' 开机启动 Startup
' %AppData%\Microsoft\Windows\Start Menu\Programs\Startup
' 网络 NetHood
' %AppData%\Microsoft\Windows\Network Shortcuts
' 打印机 PrintHood
' %AppData%\Microsoft\Windows\Printer Shortcuts
' 最近 Recent
' %AppData%\Microsoft\Windows\Recent
' 发给 SendTo
' %AppData%\Microsoft\Windows\SendTo
' 模板 Templates
' %AppData%\Microsoft\Windows\Templates
' ----------系统----------
' 字体 Fonts
' C:\Windows\Fonts

' 快捷方式名称
name = "VS Code"
' 绝对路径
' absolutePath = "D:\Program Files\Microsoft VS Code\Code.exe"
' 相对路径
relativePath = "Code.exe"
' 创建位置
specialFolders = "Desktop"
set ws = CreateObject("WScript.Shell")
set shortcut = ws.CreateShortcut(ws.SpecialFolders(specialFolders) & "\" & name & ".lnk")
' 设置绝对路径
' shortcut.TargetPath = absolutePath
' 设置相对路径
shortcut.TargetPath = CreateObject("Scripting.FileSystemObject").GetFile(WScript.ScriptFullName).ParentFolder.Path & "\" & relativePath
' 设置参数
' shortcut.Arguments = ""
' 设置图标
' shortcut.IconLocation = ""
shortcut.Save
