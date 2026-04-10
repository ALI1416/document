# docker-compose

文档<https://docs.docker.com/reference/compose-file/>

## 命令

### 通用命令

| 常用 | 命令    | 解释                                                  |
| ---- | ------- | ----------------------------------------------------- |
|      | attach  | 将本地标准输入、输出和错误流连接到正在运行的容器      |
|      | build   | 构建或重构服务                                        |
|      | commit  | 根据容器的更改创建新镜像                              |
|      | config  | 解析、解析并呈现规范格式的组合文件                    |
|      | cp      | 在容器和本地文件系统之间复制文件/文件夹               |
|      | create  | 创建新容器                                            |
| ■■   | up      | 创建并启动容器                                        |
| ■■   | down    | 停止并移除容器、网络                                  |
|      | events  | 从容器接收实时事件                                    |
|      | exec    | 在运行的容器中执行命令                                |
|      | export  | 将容器的文件系统导出为tar                             |
|      | images  | 列出已创建容器使用的镜像                              |
|      | kill    | 杀死镜像正在运行的容器                                |
| ■■   | logs    | 查看容器的日志                                        |
| ■■   | ls      | 列出正在运行的Docker Compose项目                      |
|      | pause   | 暂停镜像容器中的所有进程                              |
|      | unpause | 取消暂停镜像容器中的所有进程                          |
|      | port    | 列出容器的端口映射或特定映射                          |
| ■■   | ps      | 列出当前正在运行的容器                                |
|      | publish | 发布撰写应用程序                                      |
|      | pull    | 从docker仓库拉取镜像                                  |
|      | push    | 将镜像推送到docker仓库                                |
|      | restart | 重新启动镜像容器                                      |
|      | rm      | 删除容器                                              |
|      | run     | 启动新的容器并运行命令                                |
|      | scale   | 扩展服务                                              |
|      | start   | 启动镜像已停止的容器                                  |
|      | stats   | 展示容器资源使用情况的实时统计流                      |
|      | stop    | 停止镜像正在运行的容器                                |
|      | top     | 显示容器的运行进程                                    |
|      | version | 显示Docker Compose的版本信息                          |
|      | volumes | 列出卷                                                |
|      | wait    | 阻塞直到镜像容器停止运行，然后打印它们的退出码        |
|      | watch   | 当文件更新时，观察服务的构建上下文并重新构建/刷新容器 |

## 示例

```yml
name: myapp
services:
  php:
    image: bitnami/php-fpm
    container_name: php
    volumes:
      - /docker/php/conf:/opt/bitnami/php/etc
      - /docker/app:/app
      - /docker/php/log:/opt/bitnami/php/logs
    restart: always
  nginx:
    image: nginx
    container_name: nginx
    ports:
      - "80:80"
    volumes:
      - /docker/nginx/conf/nginx.conf:/etc/nginx/nginx.conf
      - /docker/app:/app
      - /docker/nginx/log:/var/log/nginx
    restart: always
    depends_on:
      - php
  mysql:
    image: mysql
    container_name: mysql
    ports:
      - "3306:3306"
    volumes:
      - /docker/mysql/conf/my.cnf:/etc/mysql/my.cnf
      - /docker/mysql/data:/var/lib/mysql
      - /docker/mysql/log:/var/log/mysql
    restart: always
  mongo:
    image: mongo
    container_name: mongo
    command: --config /etc/mongod.conf
    ports:
      - "27017:27017"
    volumes:
      - /docker/mongo/conf/mongod.conf:/etc/mongod.conf
      - /docker/mongo/data:/data/db
      - /docker/mongo/log:/var/log/mongodb
    restart: always
  jenkins:
    image: jenkins/jenkins:latest-jdk21
    container_name: jenkins
    ports:
      - "8080:8080"
    volumes:
      - /docker/jenkins:/var/jenkins_home
    restart: always
```
