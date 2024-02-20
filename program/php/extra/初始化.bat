@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
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
md ext
md lib
copy ..\..\deplister.exe
copy ..\..\glib-2.dll
copy ..\..\gmodule-2.dll
copy ..\..\icudt72.dll
copy ..\..\icuin72.dll
copy ..\..\icuio72.dll
copy ..\..\icuuc72.dll
copy ..\..\libcrypto-3-x64.dll
copy ..\..\libenchant2.dll
copy ..\..\libpq.dll
copy ..\..\libsasl.dll
copy ..\..\libsodium.dll
copy ..\..\libsqlite3.dll
copy ..\..\libssh2.dll
copy ..\..\libssl-3-x64.dll
copy ..\..\nghttp2.dll
copy ..\..\phar.phar.bat
copy ..\..\pharcommand.phar
copy ..\..\php.exe
copy ..\..\php.ini-development
copy ..\..\php.ini-production
copy ..\..\php8.dll
copy ..\..\php8phpdbg.dll
copy ..\..\php-cgi.exe
copy ..\..\phpdbg.exe
copy ..\..\php-win.exe
copy ..\..\php.ini-development php.ini
xcopy ..\..\ext ext /s /i /y
xcopy ..\..\extras extras /s /i /y
xcopy ..\..\lib lib /s /i /y
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
call:downloadFile xxfpm.exe https://gitee.com/ALI1416/document/raw/master/software/xxfpm/xxfpm.exe
call:downloadFile pthreadGC2.dll https://gitee.com/ALI1416/document/raw/master/software/xxfpm/pthreadGC2.dll
echo 正在启用插件，请稍后...
..\extra\replaceFileString2 php.ini php.ini
..\extra\replaceFileString php.ini php.ini ";extension=mysqli" "extension=mysqli"
..\extra\replaceFileString php.ini php.ini ";extension=openssl" "extension=openssl"
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
