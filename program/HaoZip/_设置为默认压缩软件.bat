@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
( reg query "HKU\S-1-5-19">nul 2>&1 )||( powershell Start-Process """%~f0""" -Verb RunAs )&&( exit )
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

HaoZip.exe -set_integration
