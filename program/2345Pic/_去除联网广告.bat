@REM @echo off
@REM Author:ALI
@REM GitHub:https://github.com/ALI1416
@REM Version:1.0
( reg query "HKU\S-1-5-19">nul 2>&1 )||( powershell Start-Process """%~f0""" -Verb RunAs )&&( exit )
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

rd /s /q %AppData%\2345Pic
netsh advfirewall firewall add rule dir=out action=block name="2345PdfReader" program="%~dp02345PdfReader.exe"
netsh advfirewall firewall add rule dir=out action=block name="2345PicViewer" program="%~dp02345PicViewer.exe"
