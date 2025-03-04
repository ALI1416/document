# nexus

1. 访问官网 <https://help.sonatype.com/en/download.html>
2. 下载`Unix archive`版本
3. 安装`Java 21`，`apt install openjdk-21-jdk`

## docker安装过程

- 查找镜像: `docker search sonatype/nexus3`
- 安装镜像: `docker pull sonatype/nexus3`
- 创建目录: `mkdir -p /data/nexus/data`
- 设置目录权限: `chmod 777 -R /data/nexus/data`
- 启动镜像: `docker run -d -e "INSTALL4J_ADD_VM_PARAMS=-Xms128m -Xmx512m -XX:MaxDirectMemorySize=512m -Djava.util.prefs.userRoot=/nexus-data/javaprefs" --name nexus3 -p 8081:8081 --restart always -v /data/nexus/data:/nexus-data sonatype/nexus3`
  - 解释：
  - `-e "INSTALL4J_ADD_VM_PARAMS=-Xms128m -Xmx512m -XX:MaxDirectMemorySize=512m -Djava.util.prefs.userRoot=/nexus-data/javaprefs"`: 限制最大1GB内存使用
  - `--name nexus3`: 名称：nexus3
  - `-p 8081:8081`: 端口映射
  - `--restart always`: docker启动时，启动该容器
  - `-v /data/nexus/data:/nexus-data`: 映射数据文件
  - `sonatype/nexus3`: 容器名称

## 查找初始密码

- 查看容器id： `docker ps`
- 进入容器： `docker exec -it 容器id bash`
- 查看密码: `cat sonatype-work/nexus3/admin.password`

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
