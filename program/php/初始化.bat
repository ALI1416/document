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
md ext
md extras
md lib
copy ..\..\deplister.exe
copy ..\..\glib-2.dll
copy ..\..\gmodule-2.dll
copy ..\..\icudt68.dll
copy ..\..\icuin68.dll
copy ..\..\icuio68.dll
copy ..\..\icuuc68.dll
copy ..\..\libcrypto-1_1-x64.dll
copy ..\..\libenchant2.dll
copy ..\..\libpq.dll
copy ..\..\libsasl.dll
copy ..\..\libsodium.dll
copy ..\..\libsqlite3.dll
copy ..\..\libssh2.dll
copy ..\..\libssl-1_1-x64.dll
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
xcopy ..\..\dev dev /s /i /y
xcopy ..\..\ext ext /s /i /y
xcopy ..\..\extras extras /s /i /y
xcopy ..\..\lib lib /s /i /y
echo 正在启用cgi，请稍后...
..\extra\replaceFileString php.ini php.ini ";cgi.fix_pathinfo=1" "cgi.fix_pathinfo=1"
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
