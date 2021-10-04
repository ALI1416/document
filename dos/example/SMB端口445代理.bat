@REM 代理222.186.139.72:5009到127.0.0.1:445
netsh interface portproxy add v4tov4 listenport=445 listenaddress=127.0.0.1 connectport=5009 connectaddress=222.186.139.72

@REM 删除代理127.0.0.1:445
@REM netsh interface portproxy delete v4tov4 listenaddress=127.0.0.1 listenport=445

@REM 关闭本机SMB服务
@REM 控制面板->程序->程序和功能->启用或关闭Windows功能->关闭`SMB 1.0/CIFS 文件共享支持`和`SMB 直通`
@REM 重启电脑
@REM 访问\\127.0.0.1\
