# git

## 全局设置
### 设置姓名和邮箱
```bat
git config --global user.name "ALI"
git config --global user.email "1416978277@qq.com"
```
### 使用https替代git来获取资源
```bat
git config --global url."https://".insteadOf git://
```

## 常用命令
| 命令          | 示例                                                 | 解释                             |
| ------------- | ---------------------------------------------------- | -------------------------------- |
| init          | git init                                             | 初始化为git项目                  |
| remote        | git remote add origin git@gitee.com:ALI1416/test.git | 已存在的项目设置远端地址         |
| remote -v     | git remote -v                                        | 查看远端地址                     |
| remote remove | git remote remove origin                             | 删除远端地址                     |
| remote clone  | git clone git@gitee.com:ALI1416/test.git             | 在本地创建远端项目               |
| add           | git add ./                                           | 把当前目录下的所有文件添加进项目 |
| status        | git status                                           | 查看变更的文件                   |
| commit        | git commit -m备注                                    | 提交项目                         |
| push          | git push                                             | 推送项目到远端                   |
| push -u       | git push -u origin master                            | 第一次推送项目到远端             |
| push          | git push origin v2                                   | 推送标签或分支到远端             |
| pull          | git pull                                             | 从远端拉取项目并合并             |
| fetch         | git fetch                                            | 从远端拉取项目并覆盖             |
| reset         | git reset --hard origin/master                       | 替换本地改动                     |
| log           | git log                                              | 查看日志                         |
| log           | git log README.md                                    | 查看指定文件的日志               |
| diff          | git diff                                             | 查看修改                         |
| tag           | git tag                                              | 显示所有分支                     |
| tag           | git tag v1                                           | 当前已提交版本打分支             |
| tag           | git tag v2 e9a6af7                                   | 指定版本打分支                   |
| tag -d        | git tag -d v1                                        | 删除分支                         |
| show          | git show v2                                          | 显示标签更详情                   |
| branch        | git branch                                           | 查看所有分支                     |
| branch        | git branch a                                         | 新建分支                         |
| branch -d     | git branch -d a                                      | 删除分支                         |
| checkout      | git chechout a                                       | 切换分支                         |
| chechout -b   | git chechout -b a                                    | 创建分支并切换过去               |
| merge         | git merge dev                                        | 将dev分支合并到当前分支          |
