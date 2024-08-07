@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

pushd %~dp0

:begin

echo.
echo   ----------请选择操作----------

echo   [1] 将Maven的bin目录添加进环境变量【需要以管理员身份运行】

echo   [2] 将Maven的bin目录从环境变量移除【需要以管理员身份运行】

echo   --------------------

echo   [Y] 创建Maven启动界面快捷方式到桌面

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 12YZ0
if errorlevel 5 goto e0
if errorlevel 4 goto ez
if errorlevel 3 goto ey
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e1
echo.
echo   [1] 将Maven的bin目录添加进环境变量【需要以管理员身份运行】
echo.
call extra\environment add path "%~dp0bin\bin"
goto begin

:e2
echo.
echo   [2] 将Maven的bin目录从环境变量移除【需要以管理员身份运行】
echo.
call extra\environment delete path "%~dp0bin\bin"
goto begin

:ey
echo.
echo   [Y] 创建Maven启动界面快捷方式到桌面
echo.
call extra\createShortcut Desktop Maven "%~f0" "" "%~dp0extra\maven.ico"
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
popd
goto end

:end
