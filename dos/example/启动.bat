@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

@REM 隐藏窗口启动程序
start mshta vbscript:CreateObject("WScript.Shell").Run("javaw -jar app.jar",0)(close)

pause

:end
