@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

pushd %~dp0

:begin

echo 初始化前请仔细阅读README.md
echo.
choice /c yn /m "确定初始化吗？"
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto end

:e1
md bin
pushd bin
copy ..\..\EventLog.dll
copy ..\..\redis-benchmark.exe
copy ..\..\redis-check-aof.exe
copy ..\..\redis-check-rdb.exe
copy ..\..\redis-cli.exe
copy ..\..\redis-server.exe
copy ..\..\redis.windows.conf redis.conf
echo 启用跨域

echo 请手动修改bin\redis.conf文件

echo 1. `bind 127.0.0.1`改成`bind 0.0.0.0`

echo 2. `protected-mode yes`改成`protected-mode no`

echo 初始化完成！
popd
popd
pause
goto end

:e2
echo 初始化取消！
popd
pause
goto end

:end
