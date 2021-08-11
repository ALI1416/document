@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

cd /d %~dp0
call:checkDataFolder

:begin

echo.
echo   ----------请选择操作----------

echo   [1] 开启MySQL服务【隐藏窗口运行】

echo   [2] 关闭MySQL服务

echo   [3] 开启MySQL服务

echo   --------------------

echo   [4] 修改root用户密码为root【会关闭MySQL服务】

echo   [5] 修改root用户密码为root【会关闭MySQL服务，密码兼容模式】

echo   [6] 新增/修改ali用户密码为Alibaba2021!，并赋予所有权限【会关闭MySQL服务】

echo   [7] 新增/修改ali用户密码为Alibaba2021!，并赋予所有权限【会关闭MySQL服务，密码兼容模式】

echo   --------------------

echo   [8] 将MySQL的bin目录添加进环境变量【需要以管理员身份运行】

echo   [9] 开启MySQL服务开机自启

echo   [A] 关闭MySQL服务开机自启

echo   --------------------

echo   [Y] 创建MySQL启动界面快捷方式到桌面

echo   [Z] 获取管理员权限

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 123456789AYZ0
if errorlevel 13 goto e0
if errorlevel 12 goto ez
if errorlevel 11 goto ey
if errorlevel 10 goto ea
if errorlevel 9 goto e9
if errorlevel 8 goto e8
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
echo   [1] 开启MySQL服务【隐藏窗口运行】
echo.
extra\hideWindow "%~dp0bin\mysqld"
goto begin

:e2
echo.
echo   [2] 关闭MySQL服务
echo.
call:kill
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e3
echo.
echo   [3] 开启MySQL服务
echo.
start bin\mysqld --console
goto begin

:e4
echo.
echo   [4] 修改root用户密码为root【会关闭MySQL服务】
echo.
call:kill
echo.
call:initFile alterUserRoot.txt
goto begin

:e5
echo.
echo   [5] 修改root用户密码为root【会关闭MySQL服务，密码兼容模式】
echo.
call:kill
echo.
call:initFile alterUserRootOld.txt
goto begin

:e6
echo.
echo   [6] 新增/修改ali用户密码为Alibaba2021!，并赋予所有权限【会关闭MySQL服务】
echo.
call:kill
echo.
call:initFile createUserAli.txt
goto begin

:e7
echo.
echo   [7] 新增/修改ali用户密码为Alibaba2021!，并赋予所有权限【会关闭MySQL服务，密码兼容模式】
echo.
call:kill
echo.
call:initFile createUserAliOld.txt
goto begin

:e8
echo.
echo   [8] 将MySQL的bin目录添加进环境变量【需要以管理员身份运行】
echo.
call extra\environment add path "%~dp0bin"
goto begin

:e9
echo.
echo   [9] 开启MySQL服务开机自启
echo.
call extra\startUp add current mysqld "%~dp0extra\hideWindow.vbs" """%~dp0bin\mysqld.exe"""
goto begin

:ea
echo.
echo   [A] 关闭MySQL服务开机自启
echo.
call extra\startUp delete current mysqld
goto begin

:ey
echo.
echo   [Y] 创建MySQL启动界面快捷方式到桌面
echo.
call extra\createShortcut Desktop MySQL "%~f0"
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
:checkDataFolder
if exist "%~dp0data" goto end
echo   data目录缺失！
echo.
echo   正在创建data目录...
echo.
"%~dp0bin\mysqld" --initialize-insecure
echo   创建成功！账号：root，密码：(空)
goto end

:initFile
start bin\mysqld --init-file="%~dp0extra\%1" --console
goto end

:kill
taskkill /f /im mysqld.exe
goto end

:end
