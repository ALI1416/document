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

echo   [4] 开启PHP服务开机自启

echo   [5] 关闭PHP服务开机自启

echo   --------------------

echo   [Y] 创建PHP启动界面快捷方式到桌面

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 12345Y0
if errorlevel 7 goto e0
if errorlevel 6 goto ey
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
echo   [4] 开启PHP服务开机自启
echo.
call extra\startUp add current php-cgi "%~dp0extra\hideWindow" """%~dp0extra\startPHP"""
goto begin

:e5
echo.
echo   [5] 关闭PHP服务开机自启
echo.
call extra\startUp delete current php-cgi
goto begin

:ey
echo.
echo   [Y] 创建PHP启动界面快捷方式到桌面
echo.
call extra\createShortcut Desktop PHP "%~f0"
goto begin

:e0
popd
goto end

:end
