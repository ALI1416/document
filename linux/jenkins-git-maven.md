# Jenkins

- 官网 <https://www.jenkins.io/>
- 教程 <https://www.jenkins.io/doc/book/installing/linux/#debianubuntu>

1. 安装`Java 21`：`apt install openjdk-21-jdk`，安装到了`/usr/lib/jvm/java-21-openjdk-amd64/`
2. 安装`Git`：`apt install git`，安装到了`/usr/bin/git`
3. 安装`Maven`：`apt install maven`，安装到了`/usr/share/maven/`
4. 添加Jenkins仓库密钥：`wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key`
5. 添加Jenkins软件源：`echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" https://pkg.jenkins.io/debian-stable binary/ | tee /etc/apt/sources.list.d/jenkins.list > /dev/null`
6. 更新包索引：`apt update`
7. 安装`Jenkins`：`apt install jenkins`
8. 访问`http://localhost:8080`
9. 查看密码：`cat /var/lib/jenkins/secrets/initialAdminPassword`
10. 以root用户启动服务：修改文件`/lib/systemd/system/jenkins.service`，修改`User=jenkins`为`User=root`，修改`Group=jenkins`为`Group=root`
11. 修改Jenkins相关文件夹用户权限：`chown -R root:root /var/lib/jenkins /var/cache/jenkins /var/log/jenkins`
12. 修改文件：`/etc/default/jenkins`
    1. 修改端口号，修改`HTTP_PORT=8080`
    2. 限制最大1GB内存使用，修改`JAVA_ARGS`，新增`-Xms128m -Xmx512m -XX:MaxDirectMemorySize=512m`
    3. 修改权限：修改`JENKINS_USER="$NAME"`为`JENKINS_USER=root`，修改`JENKINS_GROUP="$NAME"`为`JENKINS_GROUP=root`
13. 更换插件源：`Manage Jenkins`->`Plugins`->`Advanced settings`，将URL`https://updates.jenkins.io/update-center.json`更换为`https://mirror.tuna.tsinghua.edu.cn/jenkins/updates/update-center.json`

如果安装Jenkins太慢，可以下载并手动安装

- 下载地址：`https://mirrors.aliyun.com/jenkins/debian-stable/`
- 安装：`dpkg -i jenkins_xxx.deb`

## 配置

1. `Manage Jenkins`->`Tools`
2. Maven配置路径填写：`/usr/share/maven/conf/settings.xml`
3. JDK路径填写：`/usr/lib/jvm/java-21-openjdk-amd64/`
4. Git路径填写：`/usr/bin/git`
5. Maven路径填写：`/usr/share/maven`
6. 安装Maven整合插件：`Manage Jenkins`->`Plugins`->`Available plugins`搜索`maven`，勾选`Maven Integration`，安装

## 创建SpringBoot项目

1. 新建Item
2. 任务名称：`test`，类型：`构建一个maven项目`
3. `源码管理`->`Git`：URL：`https://gitee.com/ALI1416/springboot-demo`，指定分支：`*/v3`
4. `构建环境`：勾选`Add timestamps to the Console Output`
5. `Pre Steps`->`Build`->`Goals and options`填写：`clean install -pl packages/util,packages/util-spring-boot,demo-base -DskipTests=true -Dmaven.javadoc.skip=true -B -V`
6. `Post Steps`->`Run regardless of build result`填写：

```sh
#!/bin/sh

# 提示Jenkins不要杀死此进程
export BUILD_ID=dontKillMe

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

# 创建部署路径
mkdir -p ${deployPath}
# 复制构建后的项目文件到部署路径
cp ${projectName}/target/${jarName} ${deployPath}
# 切换到部署路径
cd ${deployPath}
# 运行项目文件
java -jar ${jarName} &
# 将pid保存到文件
echo $! > ${deployPath}pid
```

- 编译结果保存在：`/var/lib/jenkins/workspace/`

## Git

### SSH密钥的管理

1. 打开SSH配置文件目录：`/root/.ssh/`
2. 把公钥`id_rsa.pub`私钥`id_rsa`文件放入
3. 修改权限：`chmod 600 /root/.ssh/id_rsa.pub /root/.ssh/id_rsa`

## Maven

### 配置镜像源

- 修改`/usr/share/maven/conf/settings.xml`文件

在`<settings>`标签内新增以下内容

```xml
<localRepository>/opt/maven-repo</localRepository>
```

在`<mirrors>`标签内新增以下内容

```xml
<mirror>
  <id>huaweicloudMaven</id>
  <mirrorOf>*</mirrorOf>
  <name>huaweicloudMaven</name>
  <url>https://mirrors.huaweicloud.com/repository/maven/</url>
</mirror>
<mirror>
  <id>aliyunMaven</id>
  <mirrorOf>*</mirrorOf>
  <name>aliyunMaven</name>
  <url>https://maven.aliyun.com/repository/public</url>
</mirror>
```

- 修改仓库权限：`chmod -R 777 /opt/maven-repo/`
- 仓库默认保存在：`/opt/maven-repo/`
