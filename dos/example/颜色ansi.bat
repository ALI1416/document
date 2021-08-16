@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

@REM Please open it by UTF-8 encoding

echo [0m无属性

echo [1m粗体(vs code有效，cmd字体颜色变亮)

echo [2m未知(无效)

echo [3m斜体(高版本电脑系统在vs code有效)

echo [4m下划线(cmd有效)

echo [5m闪烁(无效)

echo [7m反色

echo [8m不显示(高版本电脑系统在vs code有效)

echo [0m无属性

echo [30m字体黑色

echo [31m字体红色

echo [32m字体绿色

echo [33m字体黄色

echo [34m字体蓝色

echo [35m字体紫红色

echo [36m字体青色

echo [37m字体白色

echo [40m背景黑色

echo [41m背景红色

echo [42m背景绿色

echo [43m背景黄色

echo [44m背景蓝色

echo [45m背景紫红色

echo [46m背景青色

echo [47m背景白色

echo [36;43m字体青色背景黄色

echo [0m无属性

echo [3;20H输出到3行20列

echo [25;30f输出到25行30列

pause

:end
