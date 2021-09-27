@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

pushd %~dp0

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
echo 正在设置隐藏窗口运行，请稍后...
..\extra\replaceFileString ..\..\bin\startup.bat bin\startup2.bat catalina.bat catalina2.bat
..\extra\replaceFileString ..\..\bin\catalina.bat bin\catalina2.bat setclasspath.bat setclasspath2.bat
..\extra\replaceFileString2 ..\..\bin\setclasspath.bat bin\setclasspath2.bat
echo 初始化完成！
popd
popd
pause
goto end

:e2
echo 初始化取消！
popd
pause
goto end

:end
