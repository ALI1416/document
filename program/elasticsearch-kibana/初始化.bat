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
echo 启用跨域

echo server.host: "0.0.0.0">> config/kibana.yml
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
