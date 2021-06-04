' 获取pid
set ws=CreateObject("WScript.Shell")
set oexec=ws.exec("C:\Windows\System32\notepad.exe")
wsh.echo oexec.processid

' 隐藏窗口
' set ws=CreateObject("WScript.Shell")
' ws.Run "C:\Windows\System32\notepad.exe",0

' Set ws = CreateObject("WScript.Shell")
' host = WScript.FullName
' If LCase( right(host, len(host)-InStrRev(host,"\")) ) = "wscript.exe" Then
'   ws.run "cscript """ & WScript.ScriptFullName & chr(34), 0
'   WScript.Quit
' End If
' Set oexec = ws.Exec("C:\Windows\System32\notepad.exe")
' Msgbox oExec.processid
'此时不要用WScript.Echo，因为当前是在控制台运行
'WScript.Echo的结果会在控制台输出，不会弹出对话框。

' 写文件
'create file and write 
' Dim fso,tf
' Set fso =  CreateObject("Scripting.FileSystemObject")
' Set tf = fso.CreateTextFile(strFileName, True) 'True-代表可以被下次写入覆盖

' tf.WriteLine("AABBCC")
' tf.close