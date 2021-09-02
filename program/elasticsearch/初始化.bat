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
echo 调整占用内存为2g

echo -Xms2g>> config\jvm.options
echo -Xmx2g>> config\jvm.options

echo 启用跨域

echo http.cors.enabled: true>> config\elasticsearch.yml
echo http.cors.allow-origin: "*">> config\elasticsearch.yml
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
