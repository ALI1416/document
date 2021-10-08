@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

pushd %~dp0

:begin

echo.
echo   ----------请选择操作----------

echo   [1] 开启PHP服务【隐藏窗口运行】

echo   [2] 关闭PHP服务【杀死php-cgi.exe进程】

echo   [3] 开启PHP服务

echo   --------------------

echo   [4] 将PHP目录添加进环境变量【需要以管理员身份运行】

echo   [5] 将PHP目录从环境变量移除【需要以管理员身份运行】

echo   [6] 开启PHP服务开机自启

echo   [7] 关闭PHP服务开机自启

echo   --------------------

echo   [Y] 创建PHP启动界面快捷方式到桌面

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 1234567YZ0
if errorlevel 10 goto e0
if errorlevel 9 goto ez
if errorlevel 8 goto ey
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
echo   [1] 开启PHP服务【隐藏窗口运行】
echo.
extra\hideWindow "%~dp0extra\startPHP"
goto begin

:e2
echo.
echo   [2] 关闭PHP服务【杀死php-cgi.exe进程】
echo.
taskkill /f /im php-cgi.exe
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e3
echo.
echo   [3] 开启PHP服务
echo.
start extra\startPHP
goto begin

:e4
echo.
echo   [4] 将PHP目录添加进环境变量【需要以管理员身份运行】
echo.
call extra\environment add path "%~dp0bin"
goto begin

:e5
echo.
echo   [5] 将PHP目录从环境变量移除【需要以管理员身份运行】
echo.
call extra\environment delete path "%~dp0bin"
goto begin


:e6
echo.
echo   [6] 开启PHP服务开机自启
echo.
call extra\startUp add current php-cgi "%~dp0extra\hideWindow" """%~dp0extra\startPHP"""
goto begin

:e7
echo.
echo   [7] 关闭PHP服务开机自启
echo.
call extra\startUp delete current php-cgi
goto begin

:ey
echo.
echo   [Y] 创建PHP启动界面快捷方式到桌面
echo.
call extra\createShortcut Desktop PHP "%~f0"
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
popd
goto end

:end
