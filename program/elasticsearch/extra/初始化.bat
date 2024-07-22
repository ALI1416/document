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
md bin
md config
md jdk
md lib
md modules
md plugins
xcopy ..\..\bin bin /s /i /y
xcopy ..\..\config config /s /i /y
xcopy ..\..\jdk jdk /s /i /y
xcopy ..\..\lib lib /s /i /y
xcopy ..\..\modules modules /s /i /y
xcopy ..\..\plugins plugins /s /i /y
echo 正在调整占用内存，请稍后...

echo -Xms512m>> config\jvm.options
echo -Xmx512m>> config\jvm.options
echo 正在启用跨域，请稍后...

echo http.cors.enabled: true>> config\elasticsearch.yml
echo http.cors.allow-origin: "*">> config\elasticsearch.yml
echo node.name: node-1>> config\elasticsearch.yml
echo network.host: 0.0.0.0>> config\elasticsearch.yml
echo cluster.initial_master_nodes: ["node-1"]>> config\elasticsearch.yml
echo 正在关闭账号密码访问，请稍后...

echo xpack.security.enabled: false>> config\elasticsearch.yml
echo 正在关闭SSL验证，请稍后...

echo xpack.security.http.ssl.enabled: false>> config\elasticsearch.yml
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
