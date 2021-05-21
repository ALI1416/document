@echo off
rem Author:ALI
rem GitHub:https://github.com/ali1416
chcp 65001
cls

:head
choice /c abcd0 /m "请选择ABCD,退出按0"
rem errorlevel 要从大到小排序
if errorlevel 255 goto e255
if errorlevel 5 goto e5
if errorlevel 4 goto e4
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e0
echo 您按了Ctrl+C键
goto head

:e255
echo 状态错误(不知道如何触发)
goto head

:e1
echo 您选择了A
goto head

:e2
echo 您选择了B
goto head

:e3
echo 您选择了C
goto head

:e4
echo 您选择了D
goto head

:e5
echo 您选择了退出
pause
exit
