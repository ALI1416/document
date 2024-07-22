@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

pushd %~dp0
call:checkFile

:begin

echo.
echo   ----------请选择操作----------

echo   [1] 开启RabbitMQ服务【隐藏窗口运行】

echo   [2] 关闭RabbitMQ服务【正常关闭】

echo   [3] 开启RabbitMQ服务

echo   --------------------

echo   [4] 将RabbitMQ的sbin目录添加进环境变量【需要以管理员身份运行】

echo   [5] 将RabbitMQ的sbin目录从环境变量移除【需要以管理员身份运行】

echo   [6] 开启RabbitMQ服务开机自启

echo   [7] 关闭RabbitMQ服务开机自启

echo   --------------------

echo   [8] 启用RabbitMQ网页管理插件

echo   [9] 用浏览器打开RabbitMQ管理页面http://localhost:15672

echo   [A] 将ERLANG_HOME添加进环境变量【需要以管理员身份运行】

echo   --------------------

echo   [Y] 创建RabbitMQ启动界面快捷方式到桌面

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 123456789aYZ0
if errorlevel 13 goto e0
if errorlevel 12 goto ez
if errorlevel 11 goto ey
if errorlevel 10 goto ea
if errorlevel 9 goto e9
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
echo   [1] 开启RabbitMQ服务【隐藏窗口运行】
echo.
call bin\sbin\rabbitmq-server -detached
goto begin

:e2
echo.
echo   [2] 关闭RabbitMQ服务【正常关闭】
echo.
call bin\sbin\rabbitmqctl stop
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e3
echo.
echo   [3] 开启RabbitMQ服务
echo.
start bin\sbin\rabbitmq-server
goto begin

:e4
echo.
echo   [4] 将RabbitMQ的sbin目录添加进环境变量【需要以管理员身份运行】
echo.
call extra\environment add path "%~dp0bin\sbin"
goto begin

:e5
echo.
echo   [5] 将RabbitMQ的sbin目录从环境变量移除【需要以管理员身份运行】
echo.
call extra\environment delete path "%~dp0bin\sbin"
goto begin

:e6
echo.
echo   [6] 开启RabbitMQ服务开机自启
echo.
call extra\startUp add current rabbitmq-server "%~dp0bin\sbin\rabbitmq-server" "-detached"
goto begin

:e7
echo.
echo   [7] 关闭RabbitMQ服务开机自启
echo.
call extra\startUp delete current rabbitmq-server
goto begin

:e8
echo.
echo   [8] 启用RabbitMQ网页管理插件
echo.
call bin\sbin\rabbitmq-plugins enable rabbitmq_management
goto begin

:e9
echo.
echo   [9] 用浏览器打开RabbitMQ管理页面http://localhost:15672
echo.
start http://localhost:15672
goto begin

:ea
echo.
echo   [A] 将ERLANG_HOME添加进环境变量【需要以管理员身份运行】
echo.
set /p p=请输入erlang的安装路径，例如【 D:\Program Files\erl-23.2 】 
call extra\environment add all "ERLANG_HOME" "%p%"
goto begin

:ey
echo.
echo   [Y] 创建RabbitMQ启动界面快捷方式到桌面
echo.
call extra\createShortcut Desktop RabbitMQ "%~f0" "" "%~dp0extra\rabbitmq.ico"
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

@REM 内部函数
:checkFile
if exist "%APPDATA%\RabbitMQ\rabbitmq.config" goto end
echo   rabbitmq.config文件缺失！
echo.
echo   正在创建rabbitmq.config文件...
echo.
mkdir "%APPDATA%\RabbitMQ"
echo [{rabbit, [{loopback_users, []}]}].> "%APPDATA%\RabbitMQ\rabbitmq.config"
echo   创建成功！
goto end

:end
