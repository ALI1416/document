# 为Windows 10 Enterprise LTSC增加应用商店

适用于Windows 10 Enterprise LTSC 2019

[下载地址](https://github.com/lixuy/LTSC-Add-MicrosoftStore/archive/2019.zip)

## 要开始安装, 请打包下载后用右键管理员运行 Add-Store.cmd

如果您不想安装App Installer / Purchase App / Xbox，请在运行安装之前删除对应的.appxbundle后缀的文件。但是，如果您计划安装游戏，或带有购买选项的应用，则不要删除。

如果装完之后商店仍然打不开，请先重启试试。如果仍然不行，请以管理员身份打开命令提示符并运行以下命令之后，然后再重启试试。

```PowerShell -ExecutionPolicy Unrestricted -Command "& {$manifest = (Get-AppxPackage Microsoft.WindowsStore).InstallLocation + '\AppxManifest.xml' ; Add-AppxPackage -DisableDevelopmentMode -Register $manifest}"```

## 商店修复

Win+R打开运行，输入WSReset.exe回车。

该命令会清空并重置Windows Store商店的所有缓存。

该脚本由abbodi1406贡献：
<https://forums.mydigitallife.net/threads/add-store-to-windows-10-enterprise-ltsc-LTSC.70741/page-30#post-1468779>
