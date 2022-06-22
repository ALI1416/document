@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

echo.
echo   ----------请选择操作----------

echo   [1] 查看VM服务状态、网络连接情况、主程序运行状态

echo   [2] 启用VM服务、网络连接、主程序(需要管理员权限)

echo   [3] 停用VM服务、网络连接、主程序(需要管理员权限)

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 123z0
if errorlevel 5 goto e0
if errorlevel 4 goto ez
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e1
echo.
echo   [1] 查看VM服务状态、网络连接情况、主程序运行状态
echo.
goto begin

:e2
echo.
echo   [2] 启用VM服务、网络连接、主程序(需要管理员权限)
echo.
goto begin

:e3
echo.
echo   [3] 停用VM服务、网络连接、主程序(需要管理员权限)
echo.
goto begin


@REM netsh interface show interface name="VMware Network Adapter VMnet1"

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

:end
