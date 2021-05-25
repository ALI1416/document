@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
set cp=
for /f "delims=: tokens=1,2" %%i in ('chcp') do (
    set cp=%%j
)
if not "%cp%"==" 65001" ( chcp 65001 & cls )

echo 读取文件列表 移动到 指定文件夹
@REM 源文件夹
set sfolder=Music
@REM 参考文件
set file=aa.txt
@REM 目的文件夹
set dfolder=aa
if not exist "%dfolder%" md "%dfolder%"
for /f "tokens=1 delims=" %%i in (%file%) do (
    echo %%i
    copy "%sfolder%\%%i" "%dfolder%"
)

pause