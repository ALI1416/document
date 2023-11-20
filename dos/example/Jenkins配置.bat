@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0

@REM 修改内存 jenkins.xml 找到 <arguments> 修改 -Xms128m -Xmx128m
@REM 设置前缀 以上新增 --prefix=/jenkins
@REM Manage Jenkins -> System -> Jenkins Location -> Jenkins URL 改为新地址
@REM 安装插件 Manage Jenkins -> Plugins -> Available plugis -> 搜索 maven -> 安装 Maven Integration

@REM 项目配置 -> 构建环境 -> 勾选 Add timestamps to the Console Output
@REM Build -> Goals and options 填写如下(demo-base为项目名)
@REM clean install -pl demo-base -DskipTests=true -Dmaven.javadoc.skip=true -B -V
@REM Post Steps -> Run regardless of build result -> Execute Windows batch command 填写如下

@REM 切换UTF8编码
chcp 65001
@REM 关闭指定端口进程
setLocal enableDelayedExpansion
@REM 端口号
set port=8080
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

@REM 提示Jenkins不要杀死此进程
set BUILD_ID=dontKillMe

@REM 项目名
set projectName=demo-base
@REM jar名
set jarName=demo-base-1.0.0.jar
@REM 部署路径
set deployPath=E:\server\demo-base\

@REM 复制构建后的项目文件到部署路径
xcopy %projectName%\target\%jarName% %deployPath% /i /y
@REM 切换到部署路径
pushd %deployPath%
@REM 运行项目文件
start javaw -jar %jarName%
