@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

cd /d %~dp0

:begin

choice /c yn /m "确定提取吗？"
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto end

:e1
copy ..\EventLog.dll
copy ..\redis-benchmark.exe
copy ..\redis-check-aof.exe
copy ..\redis-check-rdb.exe
copy ..\redis-cli.exe
copy ..\redis-server.exe
copy ..\redis.windows.conf redis.conf

echo 提取完成！
pause
goto end

:e2
echo 提取取消！
pause
goto end

:end
