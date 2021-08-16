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
md lib\plugin
md share
copy ..\extra\my.ini
copy ..\..\bin\libcrypto-1_1-x64.dll bin
copy ..\..\bin\libprotobuf-lite.dll bin
copy ..\..\bin\libssl-1_1-x64.dll bin
copy ..\..\bin\mysql.exe bin
copy ..\..\bin\mysqladmin.exe bin
copy ..\..\bin\mysqld.exe bin
copy ..\..\bin\mysqldump.exe bin
copy ..\..\bin\mysqlimport.exe bin
copy ..\..\lib\plugin\component_reference_cache.dll lib\plugin
xcopy ..\..\share share /s /i /y
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
