@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0

@REM 代理222.186.139.72:5009到127.0.0.1:445
netsh interface portproxy add v4tov4 listenaddress=127.0.0.1 listenport=445 connectaddress=222.186.139.72 connectport=5009

@REM 删除代理127.0.0.1:445
@REM netsh interface portproxy delete v4tov4 listenaddress=127.0.0.1 listenport=445

@REM 显示全部代理
@REM netsh interface portproxy show all

@REM 关闭本机SMB服务：
@REM 1. 控制面板->程序->程序和功能->启用或关闭Windows功能->关闭`SMB 1.0/CIFS 文件共享支持`和`SMB 直通`
@REM 2. 重启电脑
@REM 3. 访问\\127.0.0.1\
