@echo off
rem Author:ALI
rem GitHub:https://github.com/ali1416
chcp 65001
cls

:head
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
if errorlevel 7 goto e0
if errorlevel 6 goto e6
if errorlevel 5 goto e5
if errorlevel 4 goto e4
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e0
exit

:e1
echo.
netstat -ano
goto head

:e2
echo.
set /p p=请输入要查询的端口号：
echo.
netstat -ano | findstr /c:":%p% "
goto head

:e3
echo.
tasklist
goto head

:e4
echo.
set /p p=请输入要查询的进程PID：
echo.
tasklist | findstr /c:" %p% "
goto head

:e5
echo.
set /p p=请输入要查询的进程名(可使用通配符)：
echo.
tasklist | findstr /i /r "%p%"
goto head

:e6
echo.
set /p p=请输入要结束的进程PID：
echo.
taskkill /pid %p% /f
goto head

:e7
echo.
set /p p=请输入要结束进程名：
echo.
taskkill /im %p% /f
goto head
