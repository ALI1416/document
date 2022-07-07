# 好压、看图王去广告

## 前提

需要进入到PE系统里去删除文件或文件夹

## 2345安全中心

- 删掉文件夹
  - `C:\Program Files\2345Soft\2345SafeCenter`(假如此路径为安装目录)
- 删掉驱动文件(`C:\Windows\System32\drivers`文件夹里`2345`开头的文件)，例如：
  - `2345Base.sys`
  - `2345bg.sys`
  - `2345ExProtect.sys`
  - `2345Iron.sys`
  - `2345Misc.sys`
  - `2345NetMgr.sys`
  - `2345Prot.sys`
- 关闭并卸载服务
  - `2345SafeCenterSvc`

## 好压

- 假如安装目录为`C:\Program Files\2345Soft\HaoZip`
- 删掉文件夹
  - `Protect`(广告)
  - `tool`(升级)
- 删掉文件
  - `Haozip_2345Upgrade.dll`(升级)
  - `Haozip_2345Upgrade.exe`(升级)
  - `HaoZipHomePage.exe`(2345网址导航)
  - `HaoZipTool.exe`(广告)
  - `HaoZipUpdate.exe`(升级)

## 看图王

- 假如安装目录为`C:\Program Files\2345Soft\2345Pic`
- 删掉文件夹
  - `Protect`(广告)
  - `tool`(升级)
- 删掉文件
  - `2345PicHelper.exe`(广告)
  - `2345PicHomePage.exe`(2345网址导航)
  - `2345PicTool.exe`(广告)
  - `2345PicUpdate.exe`(升级)
  - `Pic_2345Upgrade.dll`(升级)
  - `Pic_2345Upgrade.exe`(升级)

## 其他缓存文件

- 删掉文件夹(`%AppData%`文件夹里带`2345`或`HaoZip`的文件夹)，例如：
  - `%AppData%\2345AvScan`
  - `%AppData%\2345DomainMon`
  - `%AppData%\2345PCSafe`
  - `%AppData%\2345PdfConverter`
  - `%AppData%\2345Pic`
  - `%AppData%\2345SafeCenter`
  - `%AppData%\2345SoftMgr`
  - `%AppData%\GameHall_2345`
  - `%AppData%\HaoZip`
  - `%AppData%\Helper_2345`
  - `%AppData%\MiniPage_2345`
  - `%AppData%\Shield_2345Explorer`
  - `%AppData%\SoftMgr_2345`
