' Author:ALI
' GitHub:https://github.com/ali1416
' Version:1.0

set ws = CreateObject("WScript.Shell")
' 启动程序并获取pid
set oexec = ws.exec("C:\Windows\System32\notepad.exe")
wsh.echo oexec.processid

' 隐藏窗口启动程序
ws.Run "C:\Windows\System32\notepad.exe",0
