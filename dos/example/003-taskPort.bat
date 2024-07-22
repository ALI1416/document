@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

:begin

set p=%2
if "%1"=="" goto help
if "%1"=="/?" goto help
if "%1"=="net" goto e1
if "%1"=="port" goto e2
if "%1"=="task" if "%~2"=="" goto e3
if "%1"=="task" if not ^%p:~0,1%==^" goto e4
if "%1"=="task" if ^%p:~0,1%==^" goto e5
if "%1"=="kill" if not ^%p:~0,1%==^" goto e6
if "%1"=="kill" if ^%p:~0,1%==^" goto e7
goto error

:error
echo 命令错误，请看以下帮助信息
goto help

:help
echo 端口号和进程管理
echo.
echo 格式：%~n0 [ net ^| port ^| task ^| kill ] [ 数字 ^| "字符串" ]
echo.
echo 例如：

echo %~n0 net 列出所有网络连接情况

echo %~n0 port 80 查询端口号"80"占用情况

echo %~n0 task 列出所有进程的详细信息

echo %~n0 task 1234 查询进程PID为"1234"的详细信息

echo %~n0 task "notepad" 查询进程名为"notepad"的详细信息(可使用通配符)

echo %~n0 kill 1234 根据进程PID"1234"结束进程

echo %~n0 kill "notepad.exe" 根据进程名"notepad.exe"结束进程

goto end

:e1
netstat -ano
goto end

:e2
echo   协议   本地地址               外部地址               状态            PID
echo   ====== ====================== ====================== =============== ==========
netstat -ano | findstr /c:":%p% "
if not %errorlevel%==0 echo 未找到端口号为 %p% 的网络连接！
goto end

:e3
tasklist
goto end

:e4
echo 映像名称                       PID 会话名                 会话#     内存使用
echo ========================= ======== ================ =========== ============
tasklist | findstr /c:" %p% "
if not %errorlevel%==0 echo 未找到PID为 %p% 的进程！
goto end

:e5
echo 映像名称                       PID 会话名                 会话#     内存使用
echo ========================= ======== ================ =========== ============
tasklist | findstr /i /r "%p%"
if not %errorlevel%==0 echo 未找到进程名为 %p% 的进程！
goto end

:e6
taskkill /pid %p% /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:e7
taskkill /im %p% /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto end

:end
