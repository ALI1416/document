@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

:begin

if "%~1"=="" goto help
if "%~1"=="/?" goto help
set pathType=notExist
if exist "%~1" ( dir /ad/b "%~1">nul 2>&1 && set pathType=folder || set pathType=file )
if %pathType%==notExist goto e1
if %pathType%==folder goto e2
if %pathType%==file if "%~2"=="" goto e3
if %pathType%==file if not "%~2"=="" goto e4
goto error

:error
echo 命令错误，请看以下帮助信息
goto help

:help
echo 使用管理员方式打开
echo.
echo 格式：%~n0 路径 [参数]
echo.
echo 例如：

echo %~n0 "A:" 打开不存在的路径，会打开路径为"C:\Windows\system32"的cmd

echo %~n0 "D:" 打开路径为"D:\"的cmd

echo %~n0 "C:\Windows\system32\cmd.exe" 打开路径为"C:\Windows\system32\cmd.exe"的文件

echo %~n0 "C:\Windows\system32\cmd.exe" "/s /k pushd D:" 打开路径为"C:\Windows\system32\cmd.exe"的文件，并传递参数"/s /k pushd D:"

goto end

:e1
( reg query "HKU\S-1-5-19">nul 2>&1 && start cmd )||( powershell Start-Process "cmd" -Verb RunAs )
goto end

:e2
( reg query "HKU\S-1-5-19">nul 2>&1 && start cmd /s /k pushd %~1 )||( powershell Start-Process "cmd" -ArgumentList """/s /k (pushd `"""%~1`""")""" -Verb RunAs )
goto end

:e3
( reg query "HKU\S-1-5-19">nul 2>&1 && start "%~1" )||( powershell Start-Process """%~1""" -Verb RunAs )
goto end

:e4
( reg query "HKU\S-1-5-19">nul 2>&1 && start "%~1" "%~2")||( powershell Start-Process """%~1""" -ArgumentList """%~2""" -Verb RunAs )
goto end

:end
