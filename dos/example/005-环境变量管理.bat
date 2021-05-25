@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
set cp=
for /f "delims=: tokens=1,2" %%i in ('chcp') do (
    set cp=%%j
)
if not "%cp%"==" 65001" ( chcp 65001 & cls )
setlocal enabledelayedexpansion

:head
set p=
set q=
set r=
echo.
echo   ----------请选择操作----------

echo   [1] 打开 系统设置 图形化界面(请手动选择环境变量)

echo   [2] 查询 环境变量

echo   [3] 查询 Path环境变量

echo   [4] 新增 环境变量(需要管理员权限)

echo   [5] 新增 Path环境变量值(需要管理员权限)

echo   [6] 删除 环境变量(需要管理员权限)

echo   [7] 删除 Path环境变量值(需要管理员权限)

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 12345670
if errorlevel 8 goto e0
if errorlevel 7 goto e7
if errorlevel 6 goto e6
if errorlevel 5 goto e5
if errorlevel 4 goto e4
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e0
exit

:e1
echo 正在打开，请稍后...
start SystemPropertiesAdvanced
echo 已打开。
goto head

:e2
echo.
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
goto head

:e3
echo.
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" | findstr /c:" Path "
goto head

:e4
echo.
set /p p=请输入名称：
set /p q=请输入值：
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v %p% /t REG_SZ /d "%q%" /f
goto head

:e5
echo.
set /p q=请输入值(不要加分号)：
call:queryExist
@REM 查询输入的值，是否存在
echo "%r%" | findstr /i /c:";%q%;" && goto e5c1 || goto e5c2
:e5c1
echo 已存在，不可重复添加。
goto head
:e5c2
@REM 拼接输入的值，尾部没有;
set r=%r%%q%
@REM 去除头部;
if "%r:~0,1%"==";" set r=%r:~1%
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path" /t REG_SZ /d "%r%" /f
echo 添加成功。
goto head

:e6
echo.
set /p p=请输入名称：
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v %p% /f
goto head

:e7
echo.
set /p q=请输入值(不要加分号)：
call:queryExist
@REM 查询输入的值，是否存在
echo "%r%" | findstr /i /c:";%q%;" && goto e7c1 || goto e7c2
:e7c1
@REM 去除输入值的多余\
if "%q:~-1%"=="\" set q=%q:~0,-1%
@REM 去除输入的值
set r=!r:;%q%;=;!
@REM 去除头部;
if "%r:~0,1%"==";" set r=%r:~1%
@REM 去除尾部;
if "%r:~-1%"==";" set r=%r:~0,-1%
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path" /t REG_SZ /d "%r%" /f
echo 删除成功。
goto head
:e7c2
echo 不存在，删除失败。
goto head


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
