# ssh秘钥生成

## 生成rsa公钥和秘钥

1. `cmd`输入命令`ssh-keygen -t rsa -C "1416978277@qq.com"`
2. 一直按回车
3. 打开`%USERPROFILE%\.ssh`文件夹
   1. 公钥`id_rsa.pub`
   2. 秘钥`id_rsa`

## 转换为TortoiseGit可使用的秘钥

1. 打开文件`D:\Program Files\TortoiseGit\bin\puttygen.exe`
2. 点击导航栏`Conversions`
3. 选择`Import key`
4. 打开`%USERPROFILE%\.ssh`文件夹
5. 选择`id_rsa`文件，点击`打开`按钮
6. 点击右下方`Save private key`按钮
7. 输入文件名`private`，点击`保存`按钮
