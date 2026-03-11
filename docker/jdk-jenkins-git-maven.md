# Jenkins

1. 拉取镜像`docker pull jenkins/jenkins:latest-jdk21`(默认拉取jdk8版，此处指定jdk21版)
2. 启动临时容器`docker run --name jenkins -d jenkins/jenkins:latest-jdk21`(默认含有git)
3. 进入容器内部`docker exec -it jenkins bash`查看要映射哪些内容
   1. jenkins文件夹`/var/jenkins_home`映射到`/docker/jenkins`，创建文件夹`mkdir -p /docker/jenkins`，修改文件夹权限`chown -R 1000:1000 /docker/jenkins`
4. 退出容器`exit`，并执行命令

```sh
mkdir -p /docker/jenkins
chown -R 1000:1000 /docker/jenkins
```

5. 停止并删除临时容器`docker stop jenkins && docker rm jenkins`
6. 配置并启动容器

```sh
docker run -d --name jenkins \
 -p 8080:8080 \
 -p 50000:50000 \
 -v /docker/jenkins:/var/jenkins_home \
 --restart=always \
 jenkins/jenkins:latest-jdk21
```

- `-p 8080:8080`Web页面
- `-p 50000:50000`代理通信页面

7. 访问地址<http://127.0.0.1:8080>
8. 查看秘钥`cat /docker/jenkins/secrets/initialAdminPassword`
9. 更换插件源：`系统管理`->`插件管理`->`Advanced settings`，将URL`https://updates.jenkins.io/update-center.json`更换为`https://mirrors.huaweicloud.com/jenkins/updates/update-center.json`
10. 安装插件：`系统管理`->`插件管理`->`Available plugins`
   1. Maven整合插件：`Maven Integration`
   2. SSH推送插件：`Publish Over SSH`
11. 安装Maven：`系统管理`->`全局工具配置`->`Maven 安装`->`新增Maven`
12. 修改Maven配置文件`/docker/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3.9.13/conf/settings.xml`
    1. 下载的依赖默认保存到`/docker/jenkins/.m2/repository/`
    2. 在`<mirrors>`标签内新增以下内容

```xml
<mirror>
  <id>aliyunMaven</id>
  <mirrorOf>*</mirrorOf>
  <name>aliyunMaven</name>
  <url>https://maven.aliyun.com/repository/public</url>
</mirror>
<mirror>
  <id>huaweicloudMaven</id>
  <mirrorOf>*</mirrorOf>
  <name>huaweicloudMaven</name>
  <url>https://mirrors.huaweicloud.com/repository/maven/</url>
</mirror>
```

## SSH推送插件配置

1. `系统管理`->`系统配置`->`Publish over SSH`
   1. `Passphrase`服务器密码，例如`root`
2. `SSH Servers`新增
   1. `Name`服务器名称，例如`本机`
   2. `Hostname`服务器地址，例如`127.0.0.1`
   3. `Username`服务器用户名，例如`root`
   4. `Remote Directory`推送目录前缀，例如`/opt/server/`
   5. `高级`->`Port`服务器端口号

## 创建SpringBoot项目

1. 新建项目
2. 任务名称：`test`，类型：`构建一个maven项目`
3. `源码管理`->`Git`：URL：`https://gitee.com/ALI1416/springboot-demo`，指定分支：`*/v3`
4. `构建环境`：勾选`Add timestamps to the Console Output`
5. `Pre Steps`->`Build`->`Goals and options`
   1. 填写：`clean install -pl packages/util,packages/util-spring-boot,demo-base -DskipTests=true -Dmaven.javadoc.skip=true -B -V`
   2. 如果要指定jdk版本号，再添加`-Dmaven.compiler.source=21 -Dmaven.compiler.target=21`
6. `Post Steps`->`Send files or execute commands over SSH`
   1. `Name`选择配置的选项
   2. `Source files`文件地址，例如`demo-base/target/demo-base-1.0.0.jar`
   3. `Remove prefix`移除前缀，例如`demo-base/target/`
   4. `Remote directory`推送目录
      - 例如`推送目录前缀`填写`/opt/server/`
      - `推送目录`填写`demo-base`(需要提前创建好)
      - 实际推送到`/opt/server/demo-base/`
   5. `Exec command`执行脚本，例如

```sh
#!/bin/sh

# 项目名
projectName=demo-base
# jar名
jarName=demo-base-1.0.0.jar
# 部署路径
deployPath=/opt/server/demo-base/

# 获取保存的pid
pid=$(cat ${deployPath}pid)
# 杀掉进程
kill -9 ${pid}

# 切换到部署路径
cd ${deployPath}
# 运行项目文件
nohup java -jar ${jarName} >/dev/null 2>&1 &
# 将pid保存到文件
echo $! > ${deployPath}pid
```

- 编译结果保存在：`/var/lib/jenkins/workspace/`(对应物理机`/docker/jenkins/workspace/`)
- 物理机需要安装`Java 21`：`apt install openjdk-21-jdk`，安装到了`/usr/lib/jvm/java-21-openjdk-amd64/`
