set name="VS Code"
set filePath="D:\Program Files\Microsoft VS Code\Code.exe"
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %name% /t REG_SZ /d %filePath% /f
pause
