@echo off
chcp 65001
cls
set /p p=请输入文件后缀：
for /f "delims=" %%a in ('dir /a-d/b *.%p%') do (
    if not exist "%%~na" md "%%~na"
    move "%%~a" "%%~na"
)
