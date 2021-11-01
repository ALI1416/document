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

echo   [1] 开启ElasticSearchHead服务【隐藏窗口运行】

echo   [2] 关闭ElasticSearchHead服务【结束端口号为9100的进程】

echo   [3] 开启ElasticSearchHead服务

echo   --------------------

echo   [4] 开启ElasticSearchHead服务开机自启

echo   [5] 关闭ElasticSearchHead服务开机自启

echo   --------------------

echo   [6] 构建ElasticSearchHead服务【首次使用必须构建】

echo   [7] 用浏览器打开ElasticSearchHead管理页面http://localhost:9100

echo   --------------------

echo   [Y] 创建ElasticSearchHead启动界面快捷方式到桌面

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
echo   [1] 开启ElasticSearchHead服务【隐藏窗口运行】
echo.
extra\hideWindow "%~dp0extra\startESHead"
goto begin

:e2
echo.
echo   [2] 关闭ElasticSearchHead服务【结束端口号为9100的进程】
echo.
set port=
set num=1
for /f "tokens=1 delims=" %%i in ( 'netstat -ano ^| findstr /c:"TCP    0.0.0.0:9100"' ) do (
    if !num!==1 set port=%%i
    set /a num+=1
)
if %num%==1 ( echo ElasticSearchHead服务未开启或端口号不是9100！ & goto begin )
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
set num=1
for /f "tokens=1 delims= skip=1" %%i in ( '"wmic process where ProcessId=%pidParent% get ParentProcessId"' ) do (
    if !num!==1 set pidParent=%%i
    set /a num+=1
)
set num=1
for /f "tokens=1 delims= skip=1" %%i in ( '"wmic process where ProcessId=%pidParent% get ParentProcessId"' ) do (
    if !num!==1 set pidParent=%%i
    set /a num+=1
)
taskkill /pid %pidParent% /t /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e3
echo.
echo   [3] 开启ElasticSearchHead服务
echo.
start extra\startESHead
goto begin

:e4
echo.
echo   [4] 开启ElasticSearchHead服务开机自启
echo.
call extra\startUp add current elasticSearchHead "%~dp0extra\hideWindow" """%~dp0extra\startESHead"""
goto begin

:e5
echo.
echo   [5] 关闭ElasticSearchHead服务开机自启
echo.
call extra\startUp delete current elasticSearchHead
goto begin

:e6
echo.
echo   [6] 构建ElasticSearchHead服务【首次使用必须构建】
echo.
pushd bin
call npm install
popd
goto begin

:e7
echo.
echo   [7] 用浏览器打开ElasticSearchHead管理页面http://localhost:9100
echo.
start http://localhost:9100
goto begin

:ey
echo.
echo   [Y] 创建ElasticSearchHead启动界面快捷方式到桌面
echo.
call extra\createShortcut Desktop ESHead "%~f0" "" "%~dp0extra\elastic.ico"
goto begin

:e0
popd
goto end

:end
