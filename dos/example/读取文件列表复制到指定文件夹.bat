@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )
setLocal enableDelayedExpansion

:begin

set /a count=0
set /a success=0
set fail=
set failList=
echo 读取文件列表 复制到 指定文件夹
echo.
@REM 目录索引文件
@REM set index=Z:\music\_music_ck.txt
set index=E:\1.txt
@REM 源文件夹
@REM set sFolder=Z:\music
set sFolder=E:\a
@REM 目的文件夹
@REM set dFolder=D:\Music
set dFolder=E:\b
if not exist "%dFolder%" md "%dFolder%"
for /f "tokens=1 delims=" %%i in (%index%) do (
    echo %%i
    copy "%sFolder%\%%i" "%dFolder%"
    set /a count=count+1
    if !errorlevel!==0 ( set /a success=success+1 ) else ( set failList=!failList!%%i\ )
)
echo.
echo 总数量 %count%
echo.
echo 成功数量 %success%
echo.
if not defined failList ( echo 全部成功！ & goto beep )
set /a fail=%count%-%success%
echo 失败数量 %fail%
echo.
echo 失败列表
echo.
set failList=%failList:~0,-2%
echo %failList:\=&echo%

:beep
echo 
pause

:end
