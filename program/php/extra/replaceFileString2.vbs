' Author:ALI
' GitHub:https://github.com/ALI1416
' Version:1.0

if WScript.Arguments.Count = 0 then
    set fso = CreateObject("Scripting.FileSystemObject")
    name = fso.GetFile(Wscript.ScriptFullName).Name
    MsgBox  _
    "参数1：源文件路径" & vbcrlf & _
    "参数2：目的文件路径（与源文件路径相同时会被覆盖）" & vbcrlf & _
    "参数3：将被替换的字符串" & vbcrlf & _
    "参数4：用于替换的字符串" & vbcrlf & _
    "参数5（可为空）：是否区分大小写：0区分（默认），1不区分" & vbcrlf & _
    "" & vbcrlf & _
    "例如：" & vbcrlf & _
    "区分大小写替换： " & name & " 1.txt 2.txt aaa 000" & vbcrlf & _
    "不区分大小写替换，并且覆盖源文件： " & name & " 1.txt 1.txt aaa 000 1" & vbcrlf & _
    "替换含有空格的字符串： " & name & " 1.txt 2.txt ""a b"" ""c d""" _
    ,vbOKOnly,"替换文件内容帮助"
    WScript.Quit
end if

set fso = WScript.CreateObject("Scripting.FileSystemObject")
set f = fso.OpenTextFile(WScript.Arguments(0))

' if WScript.arguments.count = 4 then
' s = replace(f.ReadAll, WScript.Arguments(2), WScript.Arguments(3))
' else
' s = replace(f.ReadAll, WScript.Arguments(2), WScript.Arguments(3), 1, -1, WScript.Arguments(4))
' end if

s = replace(f.ReadAll, ";extension_dir = "&chr(34)&"ext"&chr(34), "extension_dir = "&chr(34)&"ext"&chr(34))

f.Close
set r = fso.OpenTextFile(WScript.Arguments(1), 2, true)
r.Write s
r.Close
