@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

:begin

choice /c abcd0 /m "请选择ABCD,退出按0"
@REM errorlevel 要从大到小排序
if errorlevel 5 goto e5
if errorlevel 4 goto e4
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e0
echo 您按了Ctrl+C键
goto begin

:e1
echo 您选择了A
goto begin

:e2
echo 您选择了B
goto begin

:e3
echo 您选择了C
goto begin

:e4
echo 您选择了D
goto begin

:e5
echo 您选择了退出
pause
goto end

:end
