@REM 关闭指定端口进程
setLocal enableDelayedExpansion
@REM 下面port修改端口号
set port=8888
set num=1
set portString=
for /f "tokens=1 delims=" %%i in ( 'netstat -ano ^| findstr /c:"TCP    0.0.0.0:%port%"' ) do (
    if !num!==1 set portString=%%i
    set /a num+=1
)
set pid=
for /f "tokens=5 delims= " %%i in ( 'echo %portString%' ) do (
    set pid=%%i
)
if not "!pid!" == "" (
    taskkill /pid !pid! /t /f
)
setLocal disableDelayedExpansion

@REM 构建项目
call mvn clean install -pl demo-base -DskipTests=true -Dmaven.javadoc.skip=true -B -V

@REM 提示Jenkins不杀死此进程
set BUILD_ID=dontKillMe

@REM 复制构建后的文件到指定路径
xcopy demo-base\target\*.jar D:\service\demo-base /i /y

@REM 切换到指定路径
pushd D:\service\demo-base

@REM 运行项目
start javaw -jar demo-base-1.0.0.jar

@REM 切换回原路径
popd

@REM 关闭窗口
exit
