# Systemd

## Service服务配置文件

在`/etc/systemd/system`目录下创建`.service`后缀的配置文件

配置文件主要由3部分组成，分别是`[Unit]`、`[Service]`、`[Install]`

- `[Unit]`：启动顺序与依赖关系
- `[Service]`：启动行为
- `[Install]`：定义如何安装这个配置文件，即怎样做到开机启动

`[Unit]`区块主要包括`Description`、`After`、`Wants`等控制参数

- `Description`：当前服务的简单描述信息
- `Documentation`：指定服务相关说明文档存放路径
- `After`：在指定服务启动后启动
- `Before`：在指定服务启动前启动
- `Wants`：希望指定服务能够启动。如果指定服务启动失败或停止运行，当前服务仍可运行
- `Requires`：指定服务必须启动。如果指定服务启动失败，当前服务停止启动

`[Service]`区块定义了如何启动当前服务，常用的字段有`Type`、`Environment`、`EnvironmentFile`、`ExecStart`、`ExecStop`等

- `Type`：服务启动类型
  - `simple`(默认)：服务启动时，进程为主进程。适用于不会自行后台运行的长时间运行的服务
  - `forking`：服务采用`fork()`方式启动，此时父进程将会退出，子进程将成为主进程。适用于那些自行生成子进程并退出父进程的服务(守护进程)，如`Apache HTTP`
  - `oneshot`：类似`simple`，但只执行一次，执行完后服务退出。此类型用于一次性任务和脚本，服务启动后执行一次然后退出。适用于需要执行一次性任务(如初始化任务)的场景。通常与`RemainAfterExit=yes`结合使用，使服务在任务完成后仍被视为活动
  - `dbus`：类似`simple`，但会等待D-Bus信号后才启动。服务启动后，systemd等待D-Bus服务在D-Bus总线上注册自己，然后认为服务已激活。适用于提供D-Bus服务的应用程序，如`GNOME`组件、`NetworkManager`、`Avahi Daemon`、`Bluetooth service (bluetoothd)`、`ModemManager`服务
  - `notify`：类似`simple`，启动结束后会发出通知信号，然后Systemd再启动其他服务。适用于需要精确控制启动过程，且能够发送通知的现代服务。这允许服务在完全初始化并准备好接受请求之前，不会被认为是活动的，如`docker`、`journald`(Systemd的日志服务)、`postsql`服务
  - `idle`：类似`simple`，但是要等他其他任务都执行完，才会启动该服务。主要使用场景是为该服务的输出，不与其他服务的输出相混合。适用于在系统空闲时运行的低优先级任务，这可以减少系统启动时的负载，如`updatedb`服务
- `User`：指定以哪个用户运行服务
- `Group`：指定以哪个用户组运行服务
- `WorkingDirectory`：工作目录
- `Environment`：环境变量
- `EnvironmentFile`：环境变量文件
- `ExecStart`：启动服务命令
- `ExecStop`：停止服务命令
- `ExecRload`：重启服务
- `ExecStartPre`：启动当前服务之前需要执行的命令
- `ExecStartPost`：启动当前服务之后需要执行的命令
- `ExecStopPre`：停止当前服务前需要执行的命令
- `ExecStopPost`：停止当前服务后需要执行的命令
- `KillMode`：停止服务模式
  - `control-group`(默认)：当前控制组里面的所有子进程，都会被杀掉
  - `process`：只杀掉主进程，子进程保留
  - `mixed`：主进程将收到SIGTERM信号，子进程收到SIGKILL信号
  - `none`：没有进程会被杀掉，只是执行服务的stop命令
- `Restart`：服务退出后，Systemd的重启方式
  - `no`(默认)：退出后不会重启
  - `on-success`：只有正常退出时(退出状态为0)，才会重启
  - `on-failure`(守护进程)：非正常退出时(退出状态码非0)，包括被信号终止和超时，才会重启。正常退出则不会重启
  - `on-abnormal`：只有被信号终止和超时，才会重启
  - `on-abort`：只有在收到没有捕捉到的信号终止时，才会重启
  - `on-watchdog`：超时退出，才会重启
  - `always`：服务无论是正常或非正常退出的情况，Systemd总是保持重启的行为
- `RestartSec`：Systemd重启服务之前，需要等待的时间，单位是`s`

`[Install]`区块定义如何安装这个配置文件，即怎样做到开机启动

- `WantedBy`：表示该服务所在的target。target的含义是服务组，表示一组服务
  - `multi-user.target`：多用户命令状态
  - `graphical.target`：图形用户状态，它依赖于`multi-user.target`

## Target配置文件

target文件是一种特殊类型的单位(unit)，用于组织和管理系统中的其他服务和单位。target文件本身不包含要执行的进程，而是作为一种逻辑分组，用于控制和协调其他单位的启动顺序和方式

作用和用途

- 分组服务：将相关的服务和任务组织在一起，便于统一管理
- 管理启动顺序：通过依赖关系(如Wants,Requires)，控制服务启动的顺序和条件
- 同步点：在系统启动或其他操作中，提供一个同步点，确保在继续执行其他任务前，一组特定的服务已经启动或达到某种状态

常见的target文件

- `multi-user.target`：对应于传统的多用户运行级别，是标准的非图形用户界面多用户系统目标
- `graphical.target`：用于启动图形用户界面，通常在`multi-user.target`的基础上添加了图形环境
- `network.target`：网络服务启动后达到的目标，许多依赖网络的服务都会在此目标之后启动
- `reboot.target`, `poweroff.target`, `halt.target`：这些目标用于管理系统的关机、重启和停机过程
