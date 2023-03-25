@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0

title %~n0

:begin

taskkill /f /im explorer.exe
attrib -h -s -r "%USERPROFILE%\AppData\Local\IconCache.db"
del /f "%USERPROFILE%\AppData\Local\IconCache.db"
attrib /s /d -h -s -r "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\*"
del /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
start explorer
start explorer

pause

:end
