' Author:ALI
' GitHub:https://github.com/ALI1416
' Version:1.0

name = "VM"
relativePath = "VM.bat"
currentPath = CreateObject("Scripting.FileSystemObject").GetFile(WScript.ScriptFullName).ParentFolder.Path
set ws = CreateObject("WScript.Shell")
set shortcut = ws.CreateShortcut(ws.SpecialFolders("Desktop") & "\" & name & ".lnk")
shortcut.TargetPath = currentPath & "\" & relativePath
shortcut.IconLocation = currentPath & "\vmware.exe"
shortcut.Save
