' Author:ALI
' GitHub:https://github.com/ALI1416
' Version:1.0

name = "软媒系统雷达"
relativePath = "radar.exe"
currentPath = CreateObject("Scripting.FileSystemObject").GetFile(WScript.ScriptFullName).ParentFolder.Path
set ws = CreateObject("WScript.Shell")
set shortcut = ws.CreateShortcut(ws.SpecialFolders("Desktop") & "\" & name & ".lnk")
shortcut.TargetPath = currentPath & "\" & relativePath
shortcut.Save
