# 破解

## 来源
https://zhile.io/

## 插件下载地址：
https://gitee.com/ja-netfilter/ja-netfilter

## 修改配置文件

### ja-netfilter\config
#### dns.conf
```conf
[DNS]
EQUAL,jetbrains.com
```

#### url.conf
```conf
[URL]
PREFIX,https://account.jetbrains.com/lservice/rpc/validateKey.action
```

### idea64.exe.vmoptions
文件路径: `%APPDATA%\JetBrains\IntelliJIdea2022.1\idea64.exe.vmoptions`
在尾部添加: `-javaagent:D:/Program Files/JetBrains/ja-netfilter/ja-netfilter.jar`

## 打开idea
手动输入激活码，获取地址 https://www.ajihuo.com/idea/4222.html
