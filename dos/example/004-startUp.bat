@echo off
rem Author:ALI
rem GitHub:https://github.com/ali1416
chcp 65001
cls

if "%1"=="" goto help
if "%1"=="/?" goto help
if "%2"=="" ( goto e1 ) else ( goto e2 )
goto error

:error
echo 命令错误，请看以下帮助信息
goto help

:help
echo 开机启动项管理
echo.
echo 格式：%~n0 [ open ^| query ^| add ^| delete ] [ all ^| current ] [名称] [路径]
echo.
echo 例如：

echo %~n0 

goto end


:end
