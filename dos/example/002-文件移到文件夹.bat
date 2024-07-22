@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

echo 移动 指定后缀的文件 到 与文件(不含后缀)同名的文件夹，不存在会创建
echo.
set /p p=请输入文件后缀(不带点)：
for /f "delims=" %%a in ('dir /a-d/b *.%p%') do (
    if not exist "%%~na" md "%%~na"
    move "%%~a" "%%~na"
)

:end
