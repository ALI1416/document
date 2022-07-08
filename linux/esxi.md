# esxi

## 添加定时关机

- 进入管理员面
  - 主机
  - 操作
  - 服务
  - 启用安全Shell(SSH)
- 使用SSH登录
- 写关机脚本
  - 新建文件: `vi /vmfs/volumes/datastore1/poweroff.sh`
  - 写入文本:

    ```sh
    #!/bin/sh
    /sbin/poweroff
    ```

  - 设置文件权限: `chmod 777 -R /vmfs/volumes/datastore1/poweroff.sh`
- 添加计划任务(仅一次有效)
  - 编辑文件: `vi /var/spool/cron/crontabs/root`
  - 追加文本: `55 16 * * * /vmfs/volumes/datastore1/poweroff.sh`
    - 解释: UTC时间16:55(北京时间0:55)执行`/vmfs/volumes/datastore1/poweroff.sh`
    - 使用`:wq!`进行强制保存退出
- 添加计划任务(永久有效)
  - 编辑文件: `vi /etc/rc.local.d/local.sh`
  - 添加文本(在`exit 0`之前):

    ```sh
    /bin/kill $(cat /var/run/crond.pid)
    /bin/echo '55 16 * * * /vmfs/volumes/datastore1/poweroff.sh' >> /var/spool/cron/
    /usr/lib/vmware/busybox/bin/busybox crond
    ```

    - 解释:
    - 第一行: `cat /var/run/crond.pid`显示crond该命令的进程号，kill掉crond进程
    - 第二行: 使用`echo`命令在`/var/spool/cron/crontabs/root`文件中追加我们要设置的计划任务的命令
    - 第三行: 重启crond进程
  - 保存更改: `auto-backup.sh`(直接执行)
