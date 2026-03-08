# Jenkins

1. 拉取镜像`docker pull jenkins/jenkins:latest-jdk21`(默认拉取jdk8版，此处指定jdk21版)
2. 启动临时容器`docker run --name jenkins -d jenkins/jenkins:latest-jdk21`
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

1. 更换插件源，编辑文件`/docker/jenkins/hudson.model.UpdateCenter.xml`，修改`https://updates.jenkins.io/update-center.json`为`https://mirrors.huaweicloud.com/jenkins/updates/update-center.json`(可以不更改)
2. 重启容器`docker restart jenkins`
3. 访问地址<http://127.0.0.1:8080>
4. 查看秘钥`cat /docker/jenkins/secrets/initialAdminPassword`
