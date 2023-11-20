@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

start mshta vbscript:CreateObject("WScript.Shell").Run("notepad",0)(close)

pause

:end
