@echo off
rem Author:ALI
rem GitHub:https://github.com/ali1416
chcp 65001
cls

if "%1"=="" goto help
if "%1"=="/?" goto help
if "%1"=="open" if "%2"=="current" goto e1
if "%1"=="open" if "%2"=="all" goto e2
if "%1"=="query" if "%2"=="current" goto e3
if "%1"=="query" if "%2"=="all" goto e4
if "%1"=="add" if "%2"=="current" if not "%~3"=="" if not "%~4"=="" goto e5
if "%1"=="add" if "%2"=="all" if not "%~3"=="" if not "%~4"=="" goto e6
if "%1"=="delete" if "%2"=="current" if not "%~3"=="" goto e7
if "%1"=="delete" if "%2"=="all" if not "%~3"=="" goto e8
goto error

:error
echo 命令错误，请看以下帮助信息
goto help

:help
echo 开机启动项管理
echo.
echo 格式：%~n0 [ open ^| query ^| add ^| delete ] [ current ^| all ] [名称] [路径]
echo.
echo 例如：

echo %~n0 open current 打开本用户开机启动项文件夹

echo %~n0 query current 注册表查询本用户开机启动项

echo %~n0 add current qq "D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe" 注册表新增本用户开机启动项(所有用户需要管理员权限)，名称为qq，路径为"D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"

echo %~n0 delete current qq 注册表删除本用户开机启动项(所有用户需要管理员权限)，名称为qq
goto end

:e1
explorer "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
goto end

:e2
explorer "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
goto end

:e3
reg query HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto end

:e4
reg query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto end

:e5
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /t REG_SZ /d "%~4" /f
goto end

:e6
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /t REG_SZ /d "%~4" /f
goto end

:e7
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /f
goto end

:e8
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /f
goto end

:end
