@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

:begin

if "%1"=="" goto help
if "%1"=="/?" goto help
if "%1"=="open" if "%2"=="current" goto e1
if "%1"=="open" if "%2"=="all" goto e2
if "%1"=="query" if "%2"=="current" goto e3
if "%1"=="query" if "%2"=="all" goto e4
if "%1"=="add" if "%2"=="current" if not "%~3"=="" if not "%~4"=="" goto e5
if "%1"=="add" if "%2"=="all" if not "%~3"=="" if not "%~4"=="" goto e6
if "%1"=="delete" if "%2"=="current" if not "%~3"=="" goto e7
if "%1"=="delete" if "%2"=="all" if not "%~3"=="" goto e8
goto error

:error
echo 命令错误，请看以下帮助信息
goto help

:help
echo 开机启动项管理
echo.
echo 格式：%~n0 [ open ^| query ^| add ^| delete ] [ current ^| all ] [名称] [路径]
echo.
echo 例如：

echo %~n0 open current 打开本用户开机启动项目录

echo %~n0 query current 查询本用户开机启动项

echo %~n0 add all qq "D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe" 新增所有用户开机启动项(新增和删除所有用户开机启动项需要管理员权限)，名称为qq，路径为"D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"

echo %~n0 add all aa "D:\a a\aa.exe" "-a" ，名称为aa，路径为"D:\a a\aa.exe"，启动参数(不带引号)为"-a"

echo %~n0 add all aa "D:\a a\aa.exe" """-a -b""" ，名称为aa，路径为"D:\a a\aa.exe"，启动参数(带引号)为"-a -b"

echo %~n0 delete current qq 删除本用户开机启动项，名称为qq
goto end

:e1
echo 正在打开，请稍后...
explorer "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
echo 已打开。
goto end

:e2
echo 正在打开，请稍后...
explorer "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
echo 已打开。
goto end

:e3
reg query HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto end

:e4
reg query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
goto end

:e5
if defined %5 ( goto e51 ) else ( goto e52 )
:e51
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /t REG_SZ /d "%~4" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end
:e52
set a=%5
echo %a%
if %a:~0,3%"=="""" ( goto e521 ) else ( goto e522 )
:e521
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /t REG_SZ /d """"%~4""" %5" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end
:e522
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /t REG_SZ /d """"%~4""" %~5" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:e6
if defined %5 ( goto e61 ) else ( goto e62 )
:e61
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /t REG_SZ /d "%~4" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end
:e62
set a=%5
echo %a%
if %a:~0,3%"=="""" ( goto e621 ) else ( goto e622 )
:e621
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /t REG_SZ /d """"%~4""" %5" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end
:e622
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /t REG_SZ /d """"%~4""" %~5" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:e7
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:e8
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "%~3" /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:end
