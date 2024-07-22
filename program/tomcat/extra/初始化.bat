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
xcopy ..\..\bin bin /s /i /y
xcopy ..\..\conf conf /s /i /y
xcopy ..\..\lib lib /s /i /y
xcopy ..\..\webapps webapps /s /i /y
popd
pushd extra
call:downloadFile unix2dos.exe https://gitee.com/ALI1416/document/raw/master/software/dos2unix/unix2dos.exe
call:downloadFile startUp.bat https://gitee.com/ALI1416/document/raw/master/dos/example/004-startUp.bat
call:downloadFile environment.bat https://gitee.com/ALI1416/document/raw/master/dos/example/005-environment.bat
call:downloadFile createShortcut.vbs https://gitee.com/ALI1416/document/raw/master/vbs/example/001-createShortcut.vbs
call:downloadFile hideWindow.vbs https://gitee.com/ALI1416/document/raw/master/vbs/example/002-hideWindow.vbs
call:downloadFile replaceFileString.vbs https://gitee.com/ALI1416/document/raw/master/vbs/example/003-replaceFileString.vbs
call unix2dos.exe startUp.bat
call unix2dos.exe environment.bat
popd
pushd bin
echo 正在设置隐藏窗口运行，请稍后...
..\extra\replaceFileString ..\..\bin\startup.bat bin\startup2.bat catalina.bat catalina2.bat
..\extra\replaceFileString ..\..\bin\catalina.bat bin\catalina2.bat setclasspath.bat setclasspath2.bat
..\extra\replaceFileString2 ..\..\bin\setclasspath.bat bin\setclasspath2.bat
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
