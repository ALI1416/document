@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

setLocal enableDelayedExpansion
@REM 关闭指定端口进程
set port=8080
set num=1
set portString=
for /f "tokens=1 delims=" %%i in ( 'netstat -ano ^| findstr /c:"TCP    0.0.0.0:%port%"' ) do (
    if !num!==1 set portString=%%i
    set /a num+=1
)
set pid=
for /f "tokens=5 delims= " %%i in ( 'echo %portString%' ) do (
    set pid=%%i
)
if not "!pid!" == "" (
    taskkill /pid !pid! /t /f
)
setLocal disableDelayedExpansion

pause

:end
