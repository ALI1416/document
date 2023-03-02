@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0

taskkill /f /im explorer.exe
cd /d %USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer
attrib -h iconcache_*.db
del iconcache_*.db /a
attrib -h thumbcache_*.db
del thumbcache_*.db /a
start explorer

pause
