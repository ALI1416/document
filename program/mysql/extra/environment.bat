@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

:begin

setlocal enabledelayedexpansion
set p=
set q=
set r=
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
echo 环境变量管理
echo.
echo 格式：%~n0 [ open ^| query ^| add ^| delete ] [ all ^| path ] [名称] [值]
echo.
echo 例如：

echo %~n0 open 打开系统设置图形化界面(请手动选择环境变量)

echo %~n0 query all 查询环境变量

echo %~n0 add all "test" "D:\test" 新增环境变量test的值为"D:\test"(新增和删除需要管理员权限)

echo %~n0 add path "D:\test" 新增环境变量path的值为"D:\test"

echo %~n0 delete all "test" 删除环境变量test
goto end

:e1
echo 正在打开，请稍后...
start SystemPropertiesAdvanced
echo 已打开。
goto end

:e2
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
goto end

:e3
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" | findstr /c:" Path "
goto end

:e4
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "%~3" /t REG_SZ /d "%~4" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:e5
set q=%~3
call:queryExist
@REM 查询输入的值，是否存在
echo %r% | findstr /i /c:";%~3;" && goto e5c1 || goto e5c2
:e5c1
echo 已存在，不可重复添加。
goto end
:e5c2
@REM 拼接输入的值，尾部没有;
set r=%r%%q%
@REM 去除头部;
if "%r:~0,1%"==";" set r=%r:~1%
@REM 尾部是\，并且不是\\就多加一个\
if "%r:~-1%"=="\" if not "%r:~-2,-1%"=="\" set r=%r%\
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path" /t REG_EXPAND_SZ /d "%r%" /f
setX "Path" /K "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\Path" /M
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:e6
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "%~3" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:e7
set q=%~3
call:queryExist
@REM 查询输入的值，是否存在
echo %r% | findstr /i /c:";%~3;" && goto e7c1 || goto e7c2
:e7c1
@REM 去除输入值的多余\
if "%q:~-1%"=="\" set q=%q:~0,-1%
@REM 去除输入的值
set r=!r:;%q%;=;!
@REM 去除头部;
if "%r:~0,1%"==";" set r=%r:~1%
@REM 去除尾部;
if "%r:~-1%"==";" set r=%r:~0,-1%
@REM 尾部是\，并且不是\\就多加一个\
if "%r:~-1%"=="\" if not "%r:~-2,-1%"=="\" set r=%r%\
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path" /t REG_EXPAND_SZ /d "%r%" /f
setX "Path" /K "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\Path" /M
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end
:e7c2
echo 不存在，删除失败。
goto end

@REM 内部函数
:queryExist
@REM 查询环境变量Path
for /f "tokens=1,2*" %%i in ('"reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" | findstr /c:" Path ""') do (
    set r=%%k
)
@REM 如果头部不存在;则添加;
if not "%r:~1%"==";" set r=;%r%
@REM 如果尾部不存在;则添加;
if not "%r:~-1%"==";" set r=%r%;
@REM 输入的值尾部是\就多加一个\
if "%q:~-1%"=="\" set q=%q%\

:end
