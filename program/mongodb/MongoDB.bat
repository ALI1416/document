@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

cd /d %~dp0
call:checkDataFolder

:begin

echo.
echo   ----------请选择操作----------

echo   [1] 开启MongoDB服务【隐藏窗口运行】

echo   [2] 关闭MongoDB服务

echo   [3] 开启MongoDB服务

echo   --------------------

echo   [4] 将MongoDB目录添加进环境变量【需要以管理员身份运行】

echo   [5] 开启MongoDB服务开机自启

echo   [6] 关闭MongoDB服务开机自启

echo   --------------------

echo   [Y] 创建MongoDB启动界面快捷方式到桌面

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 123456YZ0
if errorlevel 9 goto e0
if errorlevel 8 goto ez
if errorlevel 7 goto ey
if errorlevel 6 goto e6
if errorlevel 5 goto e5
if errorlevel 4 goto e4
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e1
echo.
echo   [1] 开启MongoDB服务【隐藏窗口运行】
echo.
extra\hideWindowMongoDB "%~dp0"
goto begin

:e2
echo.
echo   [2] 关闭MongoDB服务
echo.
taskkill /f /im mongod.exe
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e3
echo.
echo   [3] 开启MongoDB服务
echo.
start mongod --dbpath "%~dp0data"
goto begin

:e4
echo.
echo   [4] 将MongoDB目录添加进环境变量【需要以管理员身份运行】
echo.
call extra\environment add path "%~dp0"
goto begin

:e5
echo.
echo   [5] 开启MongoDB服务开机自启
echo.
call extra\startUp add current mongod "%~dp0extra\hideWindowMongoDB.vbs" """%~dp0\"""
goto begin

:e6
echo.
echo   [6] 关闭MongoDB服务开机自启
echo.
call extra\startUp delete current mongod
goto begin

:ey
echo.
echo   [Y] 创建MongoDB启动界面快捷方式到桌面
echo.
call extra\createShortcut Desktop MongoDB "%~f0"
goto begin

:ez
echo.
echo   [Z] 获取管理员权限
echo.
( reg query "HKU\S-1-5-19">nul 2>&1 && goto ez1 )||( goto ez2 )
:ez1
echo 已经获取到了管理员权限，不必重复获取！
goto begin
:ez2
( powershell Start-Process """%~f0""" -Verb RunAs )&&( exit )
if %errorlevel%==0 goto end
echo.
echo 获取失败，请重试！
goto begin

:e0
goto end

@REM 内部函数
:checkDataFolder
if exist "%~dp0data" goto end
echo   data目录缺失！
echo.
echo   正在创建data目录...
echo.
md "%~dp0data"
echo   创建成功！
goto end

:end
