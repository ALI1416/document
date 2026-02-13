# docker

- 官网 <https://docker.com/>
- 教程 <https://docs.docker.com/engine/install/ubuntu/>

## 安装

1. 安装必要依赖`apt install ca-certificates curl`
2. 安装docker源`curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc`
3. 添加docker源到apt源列表``

```sh
tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF
```

4. 更新包索引`apt update`
5. 安装docker`apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`
6. 查看运行状态`systemctl status docker`
7. 更换国内镜像，创建文件`vi /etc/docker/daemon.json`，并填写内容

```json
{
  "registry-mirrors": [
    "https://lraoset6.mirror.aliyuncs.com"
  ]
}
```

- 国内免费镜像不稳定，请翻墙使用官方镜像或使用国内付费镜像
- 免费轩辕镜像地址`https://docker.xuanyuan.me`
- 付费可以使用轩辕镜像<https://xuanyuan.cloud/recharge>
- 购买的阿里云服务器可以使用阿里云镜像<https://cr.console.aliyun.com/cn-qingdao/instances/mirrors>

8. 重启`systemctl daemon-reload`、`systemctl restart docker`
9. 尝试拉取镜像`docker pull nginx`

## 命令

### 通用命令

| 常用 | 命令    | 解释                                 |
| ---- | ------- | ------------------------------------ |
| ■■   | run     | 启动新的容器并运行命令               |
| ■■   | exec    | 在运行的容器中执行命令               |
| ■■   | ps      | 列出当前正在运行的容器               |
|      | build   | 使用dockerfile构建镜像               |
|      | bake    | 从文件构建                           |
| ■■   | pull    | 从docker仓库拉取镜像                 |
|      | push    | 将镜像推送到docker仓库               |
| ■■   | images  | 列出本地存储的所有镜                 |
|      | login   | 登录docker仓库                       |
|      | logout  | 退出docker仓库                       |
| ■■   | search  | 从docker仓库搜索镜像                 |
|      | version | 显示docker客户端和守护进程的版本信息 |
|      | info    | 显示docker系统的详细信息             |

### 管理命令

| 常用 | 命令      | 解释                         |
| ---- | --------- | ---------------------------- |
|      | builder   | 管理构建                     |
|      | buildx*   | docker构建                   |
|      | compose*  | docker编排                   |
|      | container | 管理容器                     |
|      | context   | 管理上下文                   |
|      | image     | 管理镜像                     |
|      | manifest  | 管理docker镜像清单和清单列表 |
|      | network   | 管理网络                     |
|      | plugin    | 管理插件                     |
|      | system    | 管理docker                   |
|      | volume    | 管理卷                       |

### 集群命令

| 常用 | 命令  | 解释     |
| ---- | ----- | -------- |
|      | swarm | 管理集群 |

### 普通命令

| 常用 | 命令    | 解释                                             |
| ---- | ------- | ------------------------------------------------ |
|      | attach  | 将本地标准输入、输出和错误流连接到正在运行的容器 |
|      | commit  | 根据容器的更改创建新镜像                         |
| ■■   | cp      | 在容器和本地文件系统之间复制文件/文件夹          |
|      | create  | 创建新容器                                       |
|      | diff    | 检查容器文件系统上文件或目录的更改情况           |
|      | events  | 从服务器获取实时事件                             |
|      | export  | 将容器的文件系统导出为tar                        |
| ■    | history | 显示镜像的历史记录                               |
|      | import  | 从tarball中导入内容以创建文件系统镜像            |
|      | inspect | 获取容器或镜像的详细信息                         |
| ■■   | kill    | 杀死镜像正在运行的容器                           |
|      | load    | 从tar或STDIN加载镜像                             |
| ■■   | logs    | 查看容器的日志                                   |
| ■■   | pause   | 暂停镜像容器中的所有进程                         |
| ■■   | port    | 列出容器的端口映射或特定映射                     |
| ■■   | rename  | 重命名容器                                       |
| ■■   | restart | 重新启动镜像容器                                 |
| ■■   | rm      | 移除镜像容器                                     |
| ■■   | rmi     | 删除镜像镜像                                     |
|      | save    | 将镜像镜像保存为tar(默认流输出到STDIN)           |
| ■■   | start   | 启动镜像已停止的容器                             |
| ■■   | stats   | 显示容器的实时资源使用情况                       |
| ■■   | stop    | 停止镜像正在运行的容器                           |
|      | tag     | 创建名为TARGET_IMAGE的标签，引用SOURCE_IMAGE     |
| ■■   | top     | 显示容器的运行进程                               |
| ■■   | unpause | 取消暂停镜像容器中的所有进程                     |
| ■■   | update  | 更新镜像容器的配置                               |
|      | wait    | 阻塞直到镜像容器停止运行，然后打印它们的退出码   |

### 选项

| 常用 | 短选项 | 长选项             | 解释                                                              |
| ---- | ------ | ------------------ | ----------------------------------------------------------------- |
|      |        | --config string    | 客户端配置文件的位置(默认/root/.docker)                           |
|      | -c     | --context string   | 用于连接到守护进程的上下文名称                                    |
|      |        |                    | (覆盖DOCKER_HOST环境变量和通过docker context use设置的默认上下文) |
|      | -D     | --debug            | 启用调试模式                                                      |
|      | -H     | --host string      | 要连接的守护进程套接字                                            |
|      | -l     | --log-level string | 设置日志级别debug/info(默认)/warn/error/fatal                     |
|      |        | --tls              | 使用TLS(--tlsverify默认启用)                                      |
|      |        | --tlscacert string | 仅信任由此CA签发的证书(默认/root/.docker/ca.pem)                  |
|      |        | --tlscert string   | TLS证书文件路径默认(/root/.docker/cert.pem)                       |
|      |        | --tlskey string    | TLS密钥文件路径默认(/root/.docker/key.pem)                        |
|      |        | --tlsverify        | 使用TLS并验证远程端                                               |
|      | -v     | --version          | 打印版本信息并退出                                                |

## run

| 常用 | 短选项 | 长选项                           | 解释                                                                   |
| ---- | ------ | -------------------------------- | ---------------------------------------------------------------------- |
|      |        | --add-host list                  | 添加自定义主机到IP映射(主机:IP)                                        |
|      |        | --annotation map                 | 向容器添加一个注解(该注解将传递给OCI运行时)(默认为map[])               |
|      | -a     | --attach list                    | 附加到STDIN/STDOUT/STDERR                                              |
|      |        | --blkio-weight uint16            | 区块IO(相对权重)，范围为10到1000，或设为0禁用(默认为0)                 |
|      |        | --blkio-weight-device list       | 块IO权重(相对设备权重)(默认[])                                         |
|      |        | --cap-add list                   | 添加Linux功能                                                          |
|      |        | --cap-drop list                  | 移除Linux能力                                                          |
|      |        | --cgroup-parent string           | 容器的可选父级cgroup                                                   |
|      |        | --cgroupns string                | 要使用的cgroup命名空间(host/private)                                   |
|      |        |                                  | host:在Docker主机的cgroup命名空间中运行容器                            |
|      |        |                                  | private:在容器自己的私有cgroup命名空间中运行容器                       |
|      |        |                                  | (空):使用守护进程上default-cgroupns-mode选项配置的cgroup命名空间(默认) |
|      |        | --cidfile string                 | 将容器ID写入文件                                                       |
|      |        | --cpu-period int                 | 限制CPU CFS(完全公平调度器)周期                                        |
|      |        | --cpu-quota int                  | 限制CPU CFS(完全公平调度器)配额                                        |
|      |        | --cpu-rt-period int              | 限制CPU实时周期(以微秒计)                                              |
|      |        | --cpu-rt-runtime int             | 限制CPU实时运行时间(以微秒计)                                          |
|      | -c     | --cpu-shares int                 | CPU份额(相对权重)                                                      |
|      |        | --cpus decimal                   | CPU数量                                                                |
|      |        | --cpuset-cpus string             | 允许执行的CPU(0-3,0,1)                                                 |
|      |        | --cpuset-mems string             | 允许执行的MEMs(0-3,0,1)                                                |
| ■■   | -d     | --detach                         | 在后台运行容器并打印容器ID                                             |
|      |        | --detach-keys string             | 覆盖用于分离容器的按键序列                                             |
|      |        | --device list                    | 将主机设备添加到容器中                                                 |
|      |        | --device-cgroup-rule list        | 将规则添加到cgroup的允许设备列表中                                     |
|      |        | --device-read-bps list           | 限制设备的读取速率(每秒字节数)(默认为[])                               |
|      |        | --device-read-iops list          | 限制设备的读取速率(每秒IO数)(默认[])                                   |
|      |        | --device-write-bps list          | 限制设备的写入速率(每秒字节数)(默认为[])                               |
|      |        | --device-write-iops list         | 限制设备的写入速率(每秒IO数)(默认[])                                   |
|      |        | --dns list                       | 设置自定义DNS服务器                                                    |
|      |        | --dns-option list                | 设置DNS选项                                                            |
|      |        | --dns-search list                | 设置自定义DNS搜索域                                                    |
|      |        | --domainname string              | 容器NIS域名                                                            |
|      |        | --entrypoint string              | 覆盖镜像的默认ENTRYPOINT                                               |
|      | -e     | --env list                       | 设置环境变量                                                           |
|      |        | --env-file list                  | 读取环境变量文件                                                       |
|      |        | --expose list                    | 暴露一个端口或一组端口                                                 |
|      |        | --gpus gpu-request               | 要添加到容器中的GPU设备(输入all表示通过所有GPU)                        |
|      |        | --group-add list                 | 添加要加入的其他群组                                                   |
|      |        | --health-cmd string              | 运行命令以检查健康状况                                                 |
|      |        | --health-interval duration       | 运行检查的时间间隔(ms/s/m/h)(默认0s)                                   |
|      |        | --health-retries int             | 连续失败需报告异常                                                     |
|      |        | --health-start-interval duration | 启动期间运行检查的时间间隔(ms/s/m/h)(默认0s)                           |
|      |        | --health-start-period duration   | 在启动健康重试倒计时之前，容器初始化的开始时间(ms/s/m/h)(默认0s)       |
|      |        | --health-timeout duration        | 允许一次检查运行的最长时间(ms/s/m/h)(默认0s)                           |
|      |        | --help                           | 打印使用说明                                                           |
|      | -h     | --hostname string                | 容器主机名                                                             |
|      |        | --init                           | 在容器内部运行一个初始化程序，用于转发信号并回收进程                   |
| ■■   | -i     | --interactive                    | 即使未连接，也保持STDIN处于打开状态                                    |
|      |        | --ip ip                          | IPv4地址(例如172.30.100.104)                                           |
|      |        | --ip6 ip                         | IPv6地址(例如2001:db8::33)                                             |
|      |        | --ipc string                     | 要使用的IPC模式                                                        |
|      |        | --isolation string               | 容器隔离技术                                                           |
|      | -l     | --label list                     | 在容器上设置元数据                                                     |
|      |        | --label-file list                | 读取以行分隔的标签文件                                                 |
|      |        | --link list                      | 添加指向另一个容器的链接                                               |
|      |        | --link-local-ip list             | 容器IPv4/IPv6链路本地地址                                              |
|      |        | --log-driver string              | 容器的日志记录驱动程序                                                 |
|      |        | --log-opt list                   | 日志驱动选项                                                           |
|      |        | --mac-address string             | 容器MAC地址(例如92:d0:c6:0a:29:33)                                     |
|      | -m     | --memory bytes                   | 内存限制                                                               |
|      |        | --memory-reservation bytes       | 内存软限制                                                             |
|      |        | --memory-swap bytes              | 交换空间限制等于内存加上交换空间：-1表示启用无限制交换空间             |
|      |        | --memory-swappiness int          | 调整容器内存交换比例(0-100)(默认-1)                                    |
|      |        | --mount mount                    | 将文件系统挂载到容器                                                   |
|      |        | --name string                    | 给容器起个名字                                                         |
|      |        | --network network                | 将容器连接到网络                                                       |
|      |        | --network-alias list             | 为容器添加网络作用域别名                                               |
|      |        | --no-healthcheck                 | 禁用所有容器指定的健康检查                                             |
|      |        | --oom-kill-disable               | 禁用内存溢出保护                                                       |
|      |        | --oom-score-adj int              | 调整主机的OOM(内存溢出)偏好设置(-1000~1000)                            |
|      |        | --pid string                     | 要使用的PID命名空间                                                    |
|      |        | --pids-limit int                 | 调整容器PID限制(-1无限制)                                              |
|      |        | --platform string                | 如果服务器支持多平台，则设置平台                                       |
|      |        | --privileged                     | 赋予此容器扩展权限                                                     |
|      | -p     | --publish list                   | 将容器的端口发布到主机                                                 |
|      | -P     | --publish-all                    | 将所有暴露的端口发布到随机端口                                         |
|      |        | --pull string                    | 运行前是否拉取镜像(always/missing/never)(默认missing)                  |
|      | -q     | --quiet                          | 抑制拉取输出                                                           |
|      |        | --read-only                      | 以只读方式挂载容器的根文件系统                                         |
|      |        | --restart string                 | 容器退出时应用的重启策略(默认no)                                       |
|      |        | --rm                             | 当容器退出时，自动移除该容器及其关联的匿名卷                           |
|      |        | --runtime string                 | 此容器所使用的运行时环境                                               |
|      |        | --security-opt list              | 安全选项                                                               |
|      |        | --shm-size bytes                 | /dev/shm的大小                                                         |
|      |        | --sig-proxy                      | 代理已接收到进程的信号(默认为true)                                     |
|      |        | --stop-signal string             | 停止集装箱的信号                                                       |
|      |        | --stop-timeout int               | 停止容器所需的超时时间(秒)                                             |
|      |        | --storage-opt list               | 容器的存储驱动选项                                                     |
|      |        | --sysctl map                     | 系统控制选项(默认map[])                                                |
|      |        | --tmpfs list                     | 挂载一个tmpfs目录                                                      |
| ■■   | -t     | --tty                            | 分配一个伪终端                                                         |
|      |        | --ulimit ulimit                  | ulimit选项(默认[])                                                     |
|      |        | --use-api-socket                 | 绑定挂载docker API套接字和所需的认证                                   |
|      | -u     | --user string                    | 用户名或UID(格式<名称\|UID>[:<组\|GID>])                               |
|      |        | --userns string                  | 要使用的用户命名空间                                                   |
|      |        | --uts string                     | 要使用的UTS命名空间                                                    |
|      | -v     | --volume list                    | 绑定挂载一个卷                                                         |
|      |        | --volume-driver string           | 容器的可选卷驱动程序                                                   |
|      |        | --volumes-from list              | 从指定的容器中挂载卷                                                   |
|      | -w     | --workdir string                 | 容器内的工作目录                                                       |

## exec

| 常用 | 短选项 | 长选项               | 解释                                     |
| ---- | ------ | -------------------- | ---------------------------------------- |
|      | -d     | --detach             | 独立模式：在后台运行命令                 |
|      |        | --detach-keys string | 覆盖用于分离容器的按键序列               |
|      | -e     | --env list           | 设置环境变量                             |
|      |        | --env-file list      | 读取环境变量文件                         |
| ■■   | -i     | --interactive        | 即使未连接，也保持STDIN打开              |
|      |        | --privileged         | 赋予该命令扩展权限                       |
| ■■   | -t     | --tty                | 分配一个伪终端                           |
|      | -u     | --user string        | 用户名或UID(格式<名称\|UID>[:<组\|GID>]) |
|      | -w     | --workdir string     | 容器内的工作目录                         |

## ps

| 常用 | 短选项 | 长选项          | 解释                                              |
| ---- | ------ | --------------- | ------------------------------------------------- |
| ■■   | -a     | --all           | 显示所有容器(默认仅显示正在运行的容器)            |
|      | -f     | --filter filter | 根据提供的条件过滤输出                            |
|      |        | --format string | 使用自定义模板格式化输出                          |
|      |        |                 | table:以表格格式输出，并带有列标题(默认)          |
|      |        |                 | table TEMPLATE:使用给定的Go模板以表格格式打印输出 |
|      |        |                 | json:以JSON格式打印                               |
|      |        |                 | TEMPLATE:使用给定的Go模板进行打印输出             |
|      | -n     | --last int      | 显示最近创建的n个容器(包括所有状态)(默认-1)       |
|      | -l     | --latest        | 显示最新创建的容器(包括所有状态)                  |
|      |        | --no-trunc      | 不要截断输出                                      |
|      | -q     | --quiet         | 仅显示容器ID                                      |
|      | -s     | --size          | 显示文件总大小                                    |
