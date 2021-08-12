@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

cd /d %~dp0

:begin

choice /c yn /m "确定提取吗？"
if errorlevel 2 goto e2
if errorlevel 1 goto e1
if errorlevel 0 goto end

:e1
md conf
md contrib
md html
copy ..\nginx.exe
xcopy ..\conf conf /s /i
xcopy ..\contrib contrib /s /i
xcopy ..\html html /s /i

echo 提取完成！
pause
goto end

:e2
echo 提取取消！
pause
goto end

:end
