@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
set cp=
for /f "delims=: tokens=1,2" %%i in ('chcp') do (
    set cp=%%j
)
if not "%cp%"==" 65001" ( chcp 65001 & cls )

pushd "%~dp0"
( reg query "HKU\S-1-5-19">nul 2>&1 )||( powershell -Command "Start-Process '%~f0' -Verb RunAs" && exit )

pause
