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
md bin
md config
md node
md node_modules
md plugins
md src
md x-pack
copy ..\..\.i18nrc.json
copy ..\..\package.json
robocopy ..\..\bin bin /e
robocopy ..\..\config config /e
robocopy ..\..\node node /e
robocopy ..\..\node_modules node_modules /e
robocopy ..\..\plugins plugins /e
robocopy ..\..\src src /e
robocopy ..\..\x-pack x-pack /e
echo 正在启用跨域，请稍后...

echo server.host: "0.0.0.0">> config/kibana.yml
popd
md extra
call:downloadFile extra\startUp.bat https://gitee.com/ALI1416/document/raw/master/dos/example/004-startUp.bat
call:downloadFile extra\environment.bat https://gitee.com/ALI1416/document/raw/master/dos/example/005-environment.bat
call:downloadFile extra\createShortcut.vbs https://gitee.com/ALI1416/document/raw/master/vbs/example/001-createShortcut.vbs
call:downloadFile extra\hideWindow.vbs https://gitee.com/ALI1416/document/raw/master/vbs/example/002-hideWindow.vbs
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
