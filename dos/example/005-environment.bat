@echo off
rem Author:ALI
rem GitHub:https://github.com/ali1416
chcp 65001
setlocal enabledelayedexpansion

if "%1"=="" goto help
if "%1"=="/?" goto help
if "%1"=="open" goto e1
if "%1"=="query" if "%2"=="all" goto e2
if "%1"=="query" if "%2"=="path" goto e3
if "%1"=="add" if "%2"=="all" if not "%~3"=="" if not "%~4"=="" goto e4
if "%1"=="add" if "%2"=="path" if not "%~3"=="" goto e5
if "%1"=="delete" if "%2"=="all" if not "%~3"=="" goto e6
if "%1"=="delete" if "%2"=="path" if not "%~3"=="" goto e7
goto error

:error
echo 命令错误，请看以下帮助信息
goto help

:help
echo 开机启动项管理
echo.
echo 格式：%~n0 [ open ^| query ^| add ^| delete ] [ all ^| path ] [名称] [值]
echo.
echo 例如：

echo %~n0 open current 打开本用户开机启动项文件夹

echo %~n0 query current 注册表查询本用户开机启动项

echo %~n0 add current qq "D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe" 注册表新增本用户开机启动项(所有用户需要管理员权限)，名称为qq，路径为"D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"

echo %~n0 delete current qq 注册表删除本用户开机启动项(所有用户需要管理员权限)，名称为qq
goto end

:e1
start SystemPropertiesAdvanced
goto end

:e2
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
goto end

:e3
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" | findstr /c:" Path "
goto end

:e4
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "%~3" /t REG_SZ /d "%~4" /f
goto end

:e5
for /f "tokens=1,2*" %%i in ('"reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" | findstr /c:" Path ""') do (
    set r=%%k
)
if not "%r:~-1%"==";" set r=%r%;
echo %r% | findstr /i /c:"%~3;" && goto e5c1 || goto e5c2
:e5c1
echo 已存在，不可重复添加。
goto end
:e5c2
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path" /t REG_SZ /d "%r%%~3;" /f
echo 添加成功。
goto end

:e6
echo.
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "%~3" /f
goto end

:e7
echo.
for /f "tokens=1,2*" %%i in ('"reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" | findstr /c:" Path ""') do (
    set r=%%k
)
if not "%r:~-1%"==";" set r=%r%;
echo %r% | findstr /i /c:"%~3;" && goto e7c1 || goto e7c2
:e7c1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path" /t REG_SZ /d "!r:%~3;=!" /f
echo 删除成功。
goto end
:e7c2
echo 不存在，删除失败。
goto end

:end
