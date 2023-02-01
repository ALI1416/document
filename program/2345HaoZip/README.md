# 2345好压

官方下载地址：<https://haozip.2345.cc/>

## 前提

装有压缩软件

## 去除垃圾

1. 选中文件，右键，选择`解压到"haozip_v6.4.0.11152_compliant\"`，如提示文件重复，选择`全部跳过`
2. 选中文件，右键，选择`用好压打开`，找到名为`$R0`的文件，提取出`700+kb`的文件，重命名为`HaoZipExt.dll`，并放入到文件夹`haozip_v6.4.0.11152_compliant`中(这个文件是显示右键菜单)
3. 删掉文件夹
   - `$0`(无用)
   - `$PLUGINSDIR`(无用)
   - `pic`(看图王)
   - `Protect`(广告)
   - `tool`(升级)
4. 删掉文件
   - `$R0`(无用)
   - `Haozip_2345Upgrade.exe`(升级)
   - `Haozip_2345Upgrade.dll`(升级)
   - `HaoZipHomePage.exe`(2345网址导航)
   - `HaoZipTool.exe`(广告)
   - `HaoZipUpdate.exe`(升级)

## 制作自解压文件

1. 重命名文件夹`haozip_v6.4.0.11152_compliant`为`HaoZip`
2. 打开好压，进入`HaoZip`的父目录，选中`HaoZip`文件夹(不要进入)
3. 点击工具栏上的`自解压`按钮
4. `解压`选项
   - 解压路径：`D:\Program Files\2345Soft`
   - 解压后运行：`HaoZip\HaoZip.exe -set_integration;HaoZip\HaoZipLoader.exe -updateRegister`
5. `高级`选项
   - 勾选：`请求管理员密码`
6. 点击`确定`按钮
7. 修改文件名为`haozip_v6.4.0.11152.exe`

## 打包下载

1. 天翼云盘 <https://cloud.189.cn/web/share?code=ZnYFvuqINV3q>

## 网站

1. 项目地址 <https://gitee.com/ALI1416/document/tree/master/program/2345HaoZip>
2. 个人网站 <http://404z.cn>
3. GitHub <https://github.com/ALI1416>
4. Gitee <https://gitee.com/ALI1416>
