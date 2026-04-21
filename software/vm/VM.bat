@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
@REM Please open it by UTF-8 encoding
( reg query "HKU\S-1-5-19">nul 2>&1 )||( powershell Start-Process """%~f0""" -Verb RunAs )&&( exit )
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

set r=
echo.
echo   ----------请选择操作----------

echo   [1] 查看VM服务、虚拟网卡、程序状态

echo   [2] 开启VM服务、虚拟网卡、程序

echo   [3] 停止VM服务、虚拟网卡、程序

echo   [0] 退出

echo   ----------请选择操作----------
echo.

choice /c 1230
if errorlevel 4 goto e0
if errorlevel 3 goto e3
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto e0

:e1
echo.
echo   [1] 查看VM服务、虚拟网卡、程序状态
echo.
setLocal enableDelayedExpansion
set num=1
for /f "skip=3 tokens=4" %%i in ('sc query "VMAuthdService"') do (
  if !num!==1 set r=%%i
  set /a num+=1
)
if %num%==1 ( echo [33m服务VMware Authorization Service不存在[0m ) else (
  if /i "%r%"=="RUNNING" ( echo [32m服务VMware Authorization Service正在运行[0m ) else ( 
    echo [31m服务VMware Authorization Service已停止[0m
  )
)
set num=1
for /f "skip=3 tokens=4" %%i in ('sc query "VMnetDHCP"') do (
  if !num!==1 set r=%%i
  set /a num+=1
)
if %num%==1 ( echo [33m服务VMware DHCP Service不存在[0m ) else (
  if /i "%r%"=="RUNNING" ( echo [32m服务VMware DHCP Service正在运行[0m ) else ( 
    echo [31m服务VMware DHCP Service已停止[0m
  )
)
set num=1
for /f "skip=3 tokens=4" %%i in ('sc query "VMware NAT Service"') do (
  if !num!==1 set r=%%i
  set /a num+=1
)
if %num%==1 ( echo [33m服务VMware NAT Service不存在[0m ) else (
  if /i "%r%"=="RUNNING" ( echo [32m服务VMware NAT Service正在运行[0m ) else ( 
    echo [31m服务VMware NAT Service已停止[0m
  )
)
set num=1
for /f "skip=3 tokens=4" %%i in ('sc query "VMUSBArbService"') do (
  if !num!==1 set r=%%i
  set /a num+=1
)
if %num%==1 ( echo [33m服务VMware USB Arbitration Service不存在[0m ) else (
  if /i "%r%"=="RUNNING" ( echo [32m服务VMware USB Arbitration Service正在运行[0m ) else ( 
    echo [31m服务VMware USB Arbitration Service已停止[0m
  )
)
set num=1
for /f "skip=3 tokens=3" %%i in ('netsh interface show interface name^="VMware Network Adapter VMnet1"') do (
  if !num!==1 set r=%%i
  set /a num+=1
)
if %num%==1 ( echo [33m虚拟网卡VMware Network Adapter VMnet1不存在[0m ) else (
  if /i "%r%"=="Enabled" ( echo [32m虚拟网卡VMware Network Adapter VMnet1已开启[0m ) else ( 
    echo [31m虚拟网卡VMware Network Adapter VMnet1已禁用[0m
  )
)
set num=1
for /f "skip=3 tokens=3" %%i in ('netsh interface show interface name^="VMware Network Adapter VMnet8"') do (
  if !num!==1 set r=%%i
  set /a num+=1
)
if %num%==1 ( echo [33m虚拟网卡VMware Network Adapter VMnet8不存在[0m ) else (
  if /i "%r%"=="Enabled" ( echo [32m虚拟网卡VMware Network Adapter VMnet8已开启[0m ) else ( 
    echo [31m虚拟网卡VMware Network Adapter VMnet8已禁用[0m
  )
)
echo VM正在运行程序如下：
tasklist /fi "imagename eq VMware* "
setLocal disableDelayedExpansion
goto begin

:e2
echo.
echo   [2] 开启VM服务、虚拟网卡、程序
echo.
echo 正在开启服务VMware DHCP Service...
net start "VMnetDHCP"
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在开启服务VMware NAT Service...
net start "VMware NAT Service"
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在开启服务VMware USB Arbitration Service...
net start "VMUSBArbService"
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在开启服务VMware Authorization Service...
net start "VMAuthdService"
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在开启虚拟网卡VMware Network Adapter VMnet1...
netsh interface set interface "VMware Network Adapter VMnet1" enable
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在开启虚拟网卡VMware Network Adapter VMnet8...
netsh interface set interface "VMware Network Adapter VMnet8" enable
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在开启VMware程序...
start vmware.exe
goto begin

:e3
echo.
echo   [3] 停止VM服务、虚拟网卡、程序
echo.
echo 正在停止服务VMware DHCP Service...
net stop "VMnetDHCP"
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在停止服务VMware NAT Service...
net stop "VMware NAT Service"
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在停止服务VMware USB Arbitration Service...
net stop "VMUSBArbService"
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在停止服务VMware Authorization Service...
net stop "VMAuthdService"
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在停止虚拟网卡VMware Network Adapter VMnet1...
netsh interface set interface "VMware Network Adapter VMnet1" disable
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在停止虚拟网卡VMware Network Adapter VMnet8...
netsh interface set interface "VMware Network Adapter VMnet8" disable
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
echo 正在停止VMware程序...
taskkill /fi "imagename eq VMware* " /f
if %errorlevel%==0 ( echo [32m成功！[0m ) else ( echo [31m失败！[0m )
goto begin

:e0
goto end

:end
