@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

:begin

set p=
set q=
echo.
echo   ----------请选择操作----------

echo   [1] 打开 本用户 开机启动项目录

echo   [2] 打开 所有用户 开机启动项目录

echo   [3] 查询 本用户 开机启动项

echo   [4] 查询 所有用户 开机启动项

echo   [5] 新增 本用户 开机启动项

echo   [6] 新增 所有用户 开机启动项(需要管理员权限)

echo   [7] 删除 本用户 开机启动项

echo   [8] 删除 所有用户 开机启动项(需要管理员权限)

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 12345678z0
if errorlevel 10 goto e0
if errorlevel 9 goto ez
if errorlevel 8 goto e8
if errorlevel 7 goto e7
if errorlevel 6 goto e6
if errorlevel 5 goto e5
if errorlevel 4 goto e4
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e1
echo.
echo 正在打开，请稍后...
explorer "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
echo 已打开。
goto begin

:e2
echo.
echo 正在打开，请稍后...
explorer "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
echo 已打开。
goto begin

:e3
echo.
reg query HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto begin

:e4
echo.
reg query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto begin

:e5
echo.
set /p p=请输入名称(任意)：

set /p q=请输入路径：
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%p%" /t REG_SZ /d "%q%" /f
goto begin

:e6
echo.
set /p p=请输入名称(任意)：

set /p q=请输入路径：
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%p%" /t REG_SZ /d "%q%" /f
goto begin

:e7
echo.
set /p p=请输入名称：
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%p%" /f
goto begin

:e8
echo.
set /p p=请输入名称：
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%p%" /f
goto begin

:ez
( reg query "HKU\S-1-5-19">nul 2>&1 )||( powershell Start-Process "%~f0" -Verb RunAs )&&( exit )
echo 已获取管理员权限，不必重复获取！
goto begin

:e0
goto end

:end
