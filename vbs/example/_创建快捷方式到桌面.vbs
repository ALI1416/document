name = "VS Code"
relativePath = "Code.exe"
set ws = CreateObject("WScript.Shell")
set shortcut = ws.CreateShortcut(ws.SpecialFolders("Desktop") & "\" & name & ".lnk")
shortcut.TargetPath = CreateObject("Scripting.FileSystemObject").GetFile(WScript.ScriptFullName).ParentFolder.Path & "\" & relativePath
shortcut.Save
