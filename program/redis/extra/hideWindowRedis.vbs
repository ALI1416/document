' Author:ALI
' GitHub:https://github.com/ali1416
' Version:1.0

if WScript.arguments.count=0 then
    dim name
    set fso = CreateObject("Scripting.FileSystemObject")
    name = fso.GetFile(Wscript.ScriptFullName).name
    MsgBox  _
    "参数1：程序路径(可带参数)" & vbcrlf & _
    "" & vbcrlf & _
    "例如：" & vbcrlf & _
    "隐藏窗口启动cmd： " & name & " cmd" & vbcrlf & _
    "隐藏窗口启动cmd并传递参数： " & name & " ""cmd /s /k pushd D:""" _
    ,vbOKOnly,"隐藏窗口启动程序帮助"
    WScript.quit
end if

' CreateObject("WScript.Shell").Run WScript.Arguments(0),0
CreateObject("WScript.Shell").Run chr(34)&WScript.Arguments(0)&"redis-server.exe"&chr(34)&chr(32)&chr(34)&WScript.Arguments(0)&"redis.conf"&chr(34),0
