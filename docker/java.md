# Java

1. 拉取镜像`eclipse-temurin:21-jre-alpine-3.24`
2. 配置并启动容器

```sh
docker run -d --name springboot-demo \
  -p 8082:8088 \
  -w /app \
  -v /docker/springboot-demo:/app \
  -v /docker/springboot-demo/log:/log \
  -e TZ=Asia/Shanghai \
  eclipse-temurin:21-jre-alpine-3.24 \
  java -Xms256m -Xmx512m \
  -jar demo-base-1.0.0.jar \
  --server.port=8088
```

- `--user root`使用root用户权限启动容器
- `--memory=1g --cpus=1`限制最大1g内存，1个逻辑CPU核心
- `-p 8082:8088`端口号8088映射到8082
- `-v /docker/springboot-demo:/app`路径`/app`映射到`/docker/springboot-demo`
- `-v /docker/springboot-demo/log:/log`路径`/log`映射到`/docker/springboot-demo/log`
- `-w /app`指定工作目录
- `-e TZ=Asia/Shanghai`指定时区为中国
- `java -Xms256m -Xmx512m -XX:+UseContainerSupport`JVM启动参数
  - `-Xms256m`JVM初始堆内存大小
  - `-Xmx512m`JVM最大堆内存上限
  - `-XX:+UseContainerSupport`让JVM识别Docker容器的内存或CPU限制(java21后默认开启)
- `-jar demo-base-1.0.0.jar`jar名称
- `--server.port=8088`jar启动参数

容器内路径

```txt
/app (工作目录)
  /config (配置文件夹)
    application.yml (配置文件)
  demo-base-1.0.0.jar (jar)
/log (日志文件夹)
  demo-base.log (日志文件)
```

实体机路径

```txt
/docker/springboot-demo (容器文件夹)
  /config (配置文件夹)
    application.yml (配置文件)
  /log (日志文件夹)
    demo-base.log (日志文件)
  demo-base-1.0.0.jar (jar)
```
