# nexus

- 下载地址 <https://help.sonatype.com/en/download.html>

## Linux使用nexus

1. 安装`Java 17`：`apt install openjdk-17-jdk`，安装到了`/usr/lib/jvm/java-17-openjdk-amd64/`
2. 下载`Unix archive`版本：`nexus-unix-x86-64-xxx.tar.gz`
3. 压缩包复制到`/opt`
4. 解压：`tar -xzf nexus-unix-x86-64-xxx.tar.gz`
5. 简化目录名，将`nexus-xxx`改为`nexus`：`mv nexus-xxx nexus`
6. 以root用户启动：修改文件`/opt/nexus/bin/nexus`，找到`run_as_root=true`修改为`run_as_root=false`
7. 限制最大1GB内存使用：修改文件`/opt/nexus/bin/nexus.vmoptions`，修改`-Xms128m`，修改`-Xmx512m`，新增`-XX:MaxDirectMemorySize=512m`
8. 修改端口号，修改文件`/opt/sonatype-work/nexus3/etc/nexus.properties`，修改`application-port=8081`
9. 启动：`sh /opt/nexus/bin/nexus start`
10. 查询是否启动成功：`ps aux | grep nexus`
11. 访问`http://localhost:8081`
12. 查看密码：`cat /opt/sonatype-work/nexus3/admin.password`
13. 停止：`sh /opt/nexus/bin/nexus stop`

### 创建服务

在`/etc/systemd/system`目录下创建文件`nexus.service`

```ini
[Unit]
Description = nexus server
After = network.target

[Service]
Type = forking
LimitNOFILE = 65536
ExecStart = /opt/nexus/bin/nexus start
ExecStop = /opt/nexus/bin/nexus stop
Restart = on-abort
TimeoutSec = 600

[Install]
WantedBy = multi-user.target
```

## 新增代理

- 设置
- Repository
- Repositories
- Create repository
- maven2 (proxy)
- 新增`华为云`代理
  - Name: `maven-huawei`
  - Remote storage: `https://mirrors.huaweicloud.com/repository/maven/`
- 新增`阿里云`代理
  - Name: `maven-aliyun`
  - Remote storage: `https://maven.aliyun.com/repository/public`

## 设置仓库顺序

- maven-public
- Group
- Member repositories
- 把`maven-huawei`和`maven-aliyun`添加进去并移动到顶部

## 仓库地址

<http://192.168.2.102:8081/repository/maven-public/>
