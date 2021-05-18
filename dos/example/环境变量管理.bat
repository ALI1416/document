@echo off
chcp 65001
cls
:head
set p=
set q=
set r=
echo.
echo   ----------请选择操作----------

echo   [1] 打开 系统设置 图形化界面(请手动选择环境变量)

echo   [2] 查询 环境变量

echo   [3] 查询 Path环境变量

echo   [4] 新增 环境变量

echo   [5] 新增 Path环境变量值

echo   [6] 删除 环境变量

echo   [7] 删除 Path环境变量值

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 12345670
if errorlevel 8 goto e0
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
echo 正在打开，请稍后...
start SystemPropertiesAdvanced
echo 已打开。
goto head

:e2
echo.
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
goto head

:e3
echo.
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" | findstr /c:" Path "
goto head

:e4
echo.
reg query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto head

:e5
echo.
set /p p=请输入路径：
set /p q=请输入名称(任意)：
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %q% /t REG_SZ /d "%p%" /f
goto head

:e6
echo.
set /p p=请输入路径：
set /p q=请输入名称(任意)：
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %q% /t REG_SZ /d "%p%" /f
goto head

:e7
echo.
set /p q=请输入名称：
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %q% /f
goto head

:e8
echo.
set /p q=请输入名称：
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %q% /f
goto head
