# docker-compose

文档<https://docs.docker.com/reference/compose-file/>

示例

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
