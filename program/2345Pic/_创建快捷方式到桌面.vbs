' Author:ALI
' GitHub:https://github.com/ALI1416
' Version:1.0

name = "看图王"
relativePath = "2345Pic.exe"
currentPath = CreateObject("Scripting.FileSystemObject").GetFile(WScript.ScriptFullName).ParentFolder.Path
set ws = CreateObject("WScript.Shell")
set shortcut = ws.CreateShortcut(ws.SpecialFolders("Desktop") & "\" & name & ".lnk")
shortcut.TargetPath = currentPath & "\" & relativePath
shortcut.Save

name = "PDF阅读器"
relativePath = "2345PdfReader.exe"
set shortcut = ws.CreateShortcut(ws.SpecialFolders("Desktop") & "\" & name & ".lnk")
shortcut.TargetPath = currentPath & "\" & relativePath
shortcut.Save
