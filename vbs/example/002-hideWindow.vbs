' Author:ALI
' GitHub:https://github.com/ALI1416
' Version:1.0

if WScript.Arguments.Count = 0 then
    set fso = CreateObject("Scripting.FileSystemObject")
    name = fso.GetFile(Wscript.ScriptFullName).Name
    MsgBox  _
    "参数1：程序路径(可带参数)" & vbcrlf & _
    "" & vbcrlf & _
    "例如：" & vbcrlf & _
    "隐藏窗口启动cmd： " & name & " cmd" & vbcrlf & _
    "隐藏窗口启动cmd并传递参数： " & name & " ""cmd /s /k pushd D:\""" _
    ,vbOKOnly,"隐藏窗口启动程序帮助"
    WScript.Quit
end if

' 末尾`0`代表隐藏窗口启动程序
CreateObject("WScript.Shell").Run WScript.Arguments(0),0
