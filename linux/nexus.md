# nexus

- 下载地址 <https://help.sonatype.com/en/download.html>

## Linux使用nexus

1. 安装`Java 17`：`apt install openjdk-17-jdk`
2. 下载`Unix archive`版本：`nexus-xxx-unix.tar.gz`
3. 压缩包复制到`/opt`
4. 解压：`tar -xzf nexus-xxx-unix.tar.gz`
5. 简化目录名，将`nexus-xxx`改为`nexus3`：`mv nexus-xxx nexus3`
6. 以root用户启动：修改文件`/opt/nexus3/bin/nexus`，找到`run_as_root=true`修改为`run_as_root=false`
7. 限制最大1GB内存使用：修改文件`/opt/nexus3/bin/nexus.vmoptions`，修改`-Xms128m`，修改`-Xmx512m`，新增`-XX:MaxDirectMemorySize=512m`
8. 启动：`sh /opt/nexus3/bin/nexus start`
9. 查询是否启动成功：`ps aux | grep nexus3`
10. 查看密码：`/opt/nexus3/sonatype-work/nexus3/admin.password`
11. 停止：`sh /opt/nexus3/bin/nexus stop`

### 创建服务

在`/etc/systemd/system`目录下创建文件`nexus3.service`

```ini
[Unit]
Description = nexus3 server
After = network.target

[Service]
Type = simple
ExecStart = /opt/nexus3/bin/nexus start
ExecStop = /opt/nexus3/bin/nexus stop

[Install]
WantedBy = multi-user.target
```

## 新增代理

- 设置
- Repository
- Repositories
- Create repository
- maven2 (proxy)
- 新增华为云代理
  - Name: maven-huawei
  - Remote storage: <https://mirrors.huaweicloud.com/repository/maven/>
- 新增阿里云代理
  - Name: maven-aliyun
  - Remote storage: <https://maven.aliyun.com/repository/public>

## 设置仓库顺序

- maven-public
- Group
- Member repositories
- 把maven-huawei和maven-aliyun添加进去并移动到顶部

## 仓库地址

<http://192.168.2.102:8081/repository/maven-public/>
