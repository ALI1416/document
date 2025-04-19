@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

pushd %~dp0
cd ..

:begin

echo 初始化前请仔细阅读README.md
echo.
choice /c yn /m "确定初始化吗？"
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto end
 
:e1
md bin
pushd bin
copy ..\..\libcrypto-3-x64.dll
copy ..\..\libssl-3-x64.dll
copy ..\..\mosquitto.conf
copy ..\..\mosquitto.dll
copy ..\..\mosquitto.exe
copy ..\..\mosquitto_ctrl.exe
copy ..\..\mosquitto_dynamic_security.dll
copy ..\..\mosquitto_passwd.exe
copy ..\..\mosquitto_pub.exe
copy ..\..\mosquitto_rr.exe
copy ..\..\mosquitto_sub.exe
copy ..\..\mosquittopp.dll
copy ..\..\pthreadVC3.dll
copy ..\..\uv.dll
copy ..\..\websockets.dll
copy ..\..\zlib1.dll
echo 正在启用外网匿名访问，请稍后...

echo allow_anonymous true>> mosquitto.conf
echo listener 1883 0.0.0.0>> mosquitto.conf
echo protocol mqtt>> mosquitto.conf
echo socket_domain ipv4>> mosquitto.conf
echo listener 15675 0.0.0.0>> mosquitto.conf
echo protocol websockets>> mosquitto.conf
echo socket_domain ipv4>> mosquitto.conf
popd
pushd extra
call:downloadFile unix2dos.exe https://gitee.com/ALI1416/document/raw/master/software/dos2unix/unix2dos.exe
call:downloadFile startUp.bat https://gitee.com/ALI1416/document/raw/master/dos/example/004-startUp.bat
call:downloadFile environment.bat https://gitee.com/ALI1416/document/raw/master/dos/example/005-environment.bat
call:downloadFile createShortcut.vbs https://gitee.com/ALI1416/document/raw/master/vbs/example/001-createShortcut.vbs
call:downloadFile hideWindow.vbs https://gitee.com/ALI1416/document/raw/master/vbs/example/002-hideWindow.vbs
call unix2dos.exe startUp.bat
call unix2dos.exe environment.bat
popd
popd
echo 初始化完成！
pause
goto end

:e2
echo 初始化取消！
popd
pause
goto end

:downloadFile
echo 正在下载文件"%~1"，下载路径为"%~2"
powershell (new-object System.Net.WebClient).DownloadFile('%~2','%~1')
if %errorlevel%==0 ( echo 下载成功！ ) else ( echo 下载失败！ )
goto end

:end
