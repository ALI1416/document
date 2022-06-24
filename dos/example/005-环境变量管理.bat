@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0
setLocal enableDelayedExpansion

:begin

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

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 1234567z0
if errorlevel 9 goto e0
if errorlevel 8 goto ez
if errorlevel 7 goto e7
if errorlevel 6 goto e6
if errorlevel 5 goto e5
if errorlevel 4 goto e4
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e1
echo.
echo   [1] 打开 系统设置 图形化界面(请手动选择环境变量)
echo.
echo 正在打开，请稍后...
start SystemPropertiesAdvanced
echo 已打开。
goto begin

:e2
echo.
echo   [2] 查询 环境变量
echo.
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
goto begin

:e3
echo.
echo   [3] 查询 Path环境变量
echo.
reg query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" | findstr /c:" Path "
goto begin

:e4
echo.
echo   [4] 新增 环境变量(需要管理员权限)
echo.
set /p p=请输入名称：

set /p q=请输入值：
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v %p% /t REG_SZ /d "%q%" /f
setX "%p%" /K "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\%p%" /M
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e5
echo.
echo   [5] 新增 Path环境变量值(需要管理员权限)
echo.
set /p q=请输入值(不要加分号)：
call:queryExist
@REM 查询输入的值，是否存在
echo "%r%" | findstr /i /c:";%q%;" && goto e5c1 || goto e5c2
:e5c1
echo 已存在，不可重复添加。
goto begin
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
goto begin

:e6
echo.
echo   [6] 删除 环境变量(需要管理员权限)
echo.
set /p p=请输入名称：
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v %p% /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e7
echo.
echo   [7] 删除 Path环境变量值(需要管理员权限)
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
@REM 尾部是\，并且不是\\就多加一个\
if "%r:~-1%"=="\" if not "%r:~-2,-1%"=="\" set r=%r%\
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path" /t REG_EXPAND_SZ /d "%r%" /f
setX "Path" /K "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\Path" /M
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin
:e7c2
echo 不存在，删除失败。
goto begin

:ez
echo.
echo   [Z] 获取管理员权限
echo.
( reg query "HKU\S-1-5-19">nul 2>&1 && goto ez1 )||( goto ez2 )
:ez1
echo 已经获取到了管理员权限，不必重复获取！
goto begin
:ez2
( powershell Start-Process """%~f0""" -Verb RunAs )&&( exit )
if %errorlevel%==0 goto end
echo.
echo 获取失败，请重试！
goto begin

:e0
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
goto end

:end
setLocal disableDelayedExpansion
