@echo off 
for /f "tokens=1-3 delims=-" %%a in ('dir /a-d/b *.xls') do ( (if not exist "%%~a-%%~b" md "%%~a-%%~b") & ( move "%%~a" "%%~a-%%~b\") )
pause