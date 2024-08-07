' Author:ALI
' GitHub:https://github.com/ALI1416
' Version:1.0

if WScript.Arguments.Count = 0 then
    set fso = CreateObject("Scripting.FileSystemObject")
    name = fso.GetFile(Wscript.ScriptFullName).Name
    MsgBox  _
    "参数1：创建位置（为自定义路径Custom时，名称需要填写路径+名称+.lnk，其他位置参考特殊文件夹SpecialFolders）" & vbcrlf & _
    "参数2：名称" & vbcrlf & _
    "参数3：目标路径" & vbcrlf & _
    "参数4（可为空）：参数" & vbcrlf & _
    "参数5（可为空）：图标" & vbcrlf & _
    "" & vbcrlf & _
    "特殊文件夹 SpecialFolders 值如下：" & vbcrlf & _
    "公共桌面 AllUsersDesktop" & vbcrlf & _
    "公共开始菜单 AllUsersStartMenu" & vbcrlf & _
    "公共程序 AllUsersPrograms" & vbcrlf & _
    "公共开机启动 AllUsersStartup" & vbcrlf & _
    "桌面 Desktop" & vbcrlf & _
    "文档 MyDocuments" & vbcrlf & _
    "应用程序数据 AppData" & vbcrlf & _
    "开始菜单 StartMenu" & vbcrlf & _
    "程序 Programs" & vbcrlf & _
    "开机启动 Startup" & vbcrlf & _
    "网络 NetHood" & vbcrlf & _
    "打印机 PrintHood" & vbcrlf & _
    "最近 Recent" & vbcrlf & _
    "发给 SendTo" & vbcrlf & _
    "模板 Templates" & vbcrlf & _
    "字体 Fonts" & vbcrlf & _
    "" & vbcrlf & _
    "例如：" & vbcrlf & _
    "创建普通快捷方式到桌面： " & name & " Desktop ""VS Code"" ""D:\Program Files\Microsoft VS Code\Code.exe""" & vbcrlf & _
    "创建带图标的快捷方式到桌面： " & name & " Desktop ""VS Code"" ""D:\Program Files\Microsoft VS Code\Code.exe"" """" ""D:\Pictures\code.ico""" & vbcrlf & _
    "创建含参数的快捷方式到我的文档： " & name & " MyDocuments 1.txt notepad D:\1.txt" & vbcrlf & _
    "创建快捷方式到指定文件夹： " & name & " Custom E:\记事本.lnk notepad" _
    ,vbOKOnly,"创建快捷方式帮助"
    WScript.Quit
end if

set ws = CreateObject("WScript.Shell")
' 判断`创建位置`是`特殊文件夹`还是`自定义路径`，并设置`名称`
if WScript.Arguments(0) = "Custom" then 
    set shortcut = ws.CreateShortcut(WScript.Arguments(1))
else
    set shortcut = ws.CreateShortcut(ws.SpecialFolders(WScript.Arguments(0)) & "\" & WScript.Arguments(1) & ".lnk")
end if
' 设置`目标路径`
shortcut.TargetPath = WScript.Arguments(2)
' 设置`参数`
if WScript.Arguments.Count = 4 then
    shortcut.Arguments = WScript.Arguments(3)
end if
' 设置`参数`和`图标`
if WScript.Arguments.Count = 5 then
    shortcut.Arguments = WScript.Arguments(3)
    shortcut.IconLocation = WScript.Arguments(4)
end if
' 保存
shortcut.Save
