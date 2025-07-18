# npm

1. 安装`nodejs`：`apt install nodejs`，安装到了`/usr/bin/node`
2. 安装`npm`：`apt install npm`

## 安装插件

1. `Manage Jenkins`->`Plugins`->`Available plugins`
2. 安装`NodeJS`

## 配置插件

1. `Manage Jenkins`->`System`->`NodeJS`
2. 别名`node`，安装目录`/usr`

## 创建npm项目

1. 新建项目
2. 任务名称：`test-npm`，类型：`构建一个自由风格的软件项目`
3. `Build Steps`->`执行 shell`，输入脚本

```sh
#!/bin/sh

# 打包文件夹
distFolder=dist/
# 压缩包名
zipName=test-npm.zip

# 删除打包文件夹
rm -r ${distFolder}

# 安装和构建项目
npm install
npm run build

# 安静压缩
cd ${distFolder}
zip -rq ${zipName} ./
```

4. `构建后操作`->`Send build artifacts over SSH`
   1. `Source files`文件地址，例如`dist/test-npm.zip`
   2. `Remove prefix`移除前缀，例如`dist/`
   3. `Remote directory`推送目录
      - 例如`推送目录前缀`填写`/opt/server/`
      - `推送目录`不用填写
      - 实际推送到`/opt/server/`
   4. `Exec command`执行脚本，例如

```sh
#!/bin/sh

# 推送路径
pushPath=/opt/server/
# 压缩包名
zipName=test-npm.zip
# 部署文件夹
deployFolder=/opt/server/test-npm/

# 删除和创建部署文件夹
rm -r ${deployFolder}
mkdir -p ${deployFolder}

# 安静解压并删除压缩包
unzip -q ${pushPath}${zipName} -d ${deployFolder}
rm ${pushPath}${zipName}
```

- 编译结果保存在：`/var/lib/jenkins/workspace/`

## 创建nodejs项目

1. 新建项目
2. 任务名称：`test`，类型：`构建一个自由风格的软件项目`
3. `Build Steps`->`Execute NodeJS script`
   1. `NodeJS Installation`选择node版本
   2. `Script`，输入脚本
