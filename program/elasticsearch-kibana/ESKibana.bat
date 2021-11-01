@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

setLocal enableDelayedExpansion
pushd %~dp0

:begin

echo.
echo   ----------请选择操作----------

echo   [1] 开启Kibana服务【隐藏窗口运行】

echo   [2] 关闭Kibana服务【结束端口号为5601的进程】

echo   [3] 开启Kibana服务

echo   --------------------

echo   [4] 将Kibana的bin目录添加进环境变量【需要以管理员身份运行】

echo   [5] 将Kibana的bin目录从环境变量移除【需要以管理员身份运行】

echo   [6] 开启Kibana服务开机自启

echo   [7] 关闭Kibana服务开机自启

echo   --------------------

echo   [8] 用浏览器打开Kibana管理页面http://localhost:5601

echo   --------------------

echo   [Y] 创建ESKibana启动界面快捷方式到桌面

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 12345678YZ0
if errorlevel 11 goto e0
if errorlevel 10 goto ez
if errorlevel 9 goto ey
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
echo   [1] 开启Kibana服务【隐藏窗口运行】
echo.
extra\hideWindow "%~dp0bin\bin\kibana"
goto begin

:e2
echo.
echo   [2] 关闭Kibana服务【结束端口号为5601的进程】
echo.
set port=
set num=1
for /f "tokens=1 delims=" %%i in ( 'netstat -ano ^| findstr /c:"TCP    127.0.0.1:5601"' ) do (
    if !num!==1 set port=%%i
    set /a num+=1
)
if %num%==1 ( echo Kibana服务未开启或端口号不是5601！ & goto begin )
set pid=
for /f "tokens=5 delims= " %%i in ( 'echo %port%' ) do (
    set pid=%%i
)
set pidParent=
set num=1
for /f "tokens=1 delims= skip=1" %%i in ( '"wmic process where ProcessId=%pid% get ParentProcessId"' ) do (
    if !num!==1 set pidParent=%%i
    set /a num+=1
)
taskkill /pid %pidParent% /t /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e3
echo.
echo   [3] 开启Kibana服务
echo.
start bin\bin\kibana
goto begin

:e4
echo.
echo   [4] 将Kibana的bin目录添加进环境变量【需要以管理员身份运行】
echo.
call extra\environment add path "%~dp0bin\bin"
goto begin

:e5
echo.
echo   [5] 将Kibana的bin目录从环境变量移除【需要以管理员身份运行】
echo.
call extra\environment delete path "%~dp0bin\bin"
goto begin

:e6
echo.
echo   [6] 开启Kibana服务开机自启
echo.
call extra\startUp add current kibana "%~dp0extra\hideWindow" """%~dp0bin\bin\kibana"""
goto begin

:e7
echo.
echo   [7] 关闭Kibana服务开机自启
echo.
call extra\startUp delete current kibana
goto begin

:e8
echo.
echo   [8] 用浏览器打开Kibana管理页面http://localhost:5601
echo.
start http://localhost:5601
goto begin

:ey
echo.
echo   [Y] 创建ESKibana启动界面快捷方式到桌面
echo.
call extra\createShortcut Desktop ESKibana "%~f0" "" "%~dp0extra\elastic-kibana.ico"
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
