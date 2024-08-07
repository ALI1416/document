@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

:begin

if "%1"=="" goto help
if "%1"=="/?" goto help
if "%2"=="" ( goto e1 ) else ( goto e2 )
goto error

:error
echo 命令错误，请看以下帮助信息
goto help

:help
echo 移动 指定后缀的文件 到 与文件(不含后缀)同名的文件夹，不存在会创建
echo.
echo 格式：%~n0 后缀(不带点) [盘符:][路径]
echo.
echo 例如：

echo %~n0 txt 会移动当前路径下所有以txt结尾的文件 到 与文件(不含后缀)同名的文件夹，不存在会创建

echo %~n0 txt files 会移动当前路径files文件夹里所有以txt结尾的文件 到 与文件(不含后缀)同名的文件夹，不存在会创建

echo %~n0 txt D:\files 会移动D:\files文件夹里所有以txt结尾的文件 到 与文件(不含后缀)同名的文件夹，不存在会创建
goto end

:e1
call:moveFile %1
goto end

:e2
pushd %2
call:moveFile %1
popd
goto end

@REM 内部函数
:moveFile
for /f "delims=" %%a in ('dir /a-d/b *.%1') do (
    if not exist "%%~na" md "%%~na"
    move "%%~a" "%%~na"
)
echo 移动完成。
goto end

:end
