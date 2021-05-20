@echo off
chcp 65001
cls
:head
set p=
set q=
echo.
echo   ----------请选择操作----------

echo   [1] 打开 本用户开机启动项 目录

echo   [2] 打开 所有用户开机启动项 目录

echo   [3] 注册表查询 本用户开机启动项

echo   [4] 注册表查询 所有用户开机启动项

echo   [5] 注册表新增 本用户开机启动项

echo   [6] 注册表新增 所有用户开机启动项(需要管理员权限)

echo   [7] 注册表删除 本用户开机启动项

echo   [8] 注册表删除 所有用户开机启动项(需要管理员权限)

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 123456780
if errorlevel 9 goto e0
if errorlevel 8 goto e8
if errorlevel 7 goto e7
if errorlevel 6 goto e6
if errorlevel 5 goto e5
if errorlevel 4 goto e4
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e0
exit

:e1
echo.
echo 正在打开，请稍后...
explorer "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
echo 已打开。
goto head

:e2
echo.
echo 正在打开，请稍后...
explorer "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
echo 已打开。
goto head

:e3
echo.
reg query HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto head

:e4
echo.
reg query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto head

:e5
echo.
set /p p=请输入名称(任意)：
set /p q=请输入路径：
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %p% /t REG_SZ /d "%q%" /f
goto head

:e6
echo.
set /p p=请输入名称(任意)：
set /p q=请输入路径：
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %p% /t REG_SZ /d "%q%" /f
goto head

:e7
echo.
set /p p=请输入名称：
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %p% /f
goto head

:e8
echo.
set /p p=请输入名称：
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %p% /f
goto head
