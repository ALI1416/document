@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

set p=
echo.
echo   ----------请选择操作----------

echo   [1] 列出所有网络连接情况

echo   [2] 查询端口号占用情况

echo   [3] 列出所有进程的详细信息

echo   [4] 查询进程PID的详细信息

echo   [5] 查询进程名的详细信息(可使用通配符)

echo   [6] 根据进程PID结束进程

echo   [7] 根据进程名结束进程

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 12345670
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
echo   [1] 列出所有网络连接情况
echo.
netstat -ano
goto begin

:e2
echo.
echo   [2] 查询端口号占用情况
echo.
set /p p=请输入要查询的端口号：
echo.
echo   协议   本地地址               外部地址               状态            PID
echo   ====== ====================== ====================== =============== ==========
netstat -ano | findstr /c:":%p% "
if not %errorlevel%==0 echo 未找到端口号为 %p% 的网络连接！
goto begin

:e3
echo.
echo   [3] 列出所有进程的详细信息
echo.
tasklist
goto begin

:e4
echo.
echo   [4] 查询进程PID的详细信息
echo.
set /p p=请输入要查询的进程PID：
echo.
echo 映像名称                       PID 会话名                 会话#     内存使用
echo ========================= ======== ================ =========== ============
tasklist | findstr /c:" %p% "
if not %errorlevel%==0 echo 未找到PID为 %p% 的进程！
goto begin

:e5
echo.
echo   [5] 查询进程名的详细信息(可使用通配符)
echo.
set /p p=请输入要查询的进程名(可使用通配符)：
echo.
echo 映像名称                       PID 会话名                 会话#     内存使用
echo ========================= ======== ================ =========== ============
tasklist | findstr /i /r "%p%"
if not %errorlevel%==0 echo 未找到进程名为 %p% 的进程！
goto begin

:e6
echo.
echo   [6] 根据进程PID结束进程
echo.
set /p p=请输入要结束的进程PID：
echo.
taskkill /pid %p% /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e7
echo.
echo   [7] 根据进程名结束进程
echo.
set /p p=请输入要结束进程名：
echo.
taskkill /im %p% /f
if %errorlevel%==0 ( echo 成功！ ) else ( echo 失败！ )
goto begin

:e0
goto end

:end
