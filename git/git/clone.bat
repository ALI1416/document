@echo off
@REM Author:ALI
@REM GitHub:https://github.com/ali1416
@REM Version:1.0
for /f "delims=: tokens=1,2" %%i in (' chcp ') do ( if not "%%j"==" 65001" ( chcp 65001 > nul ) )

title %~n0

:begin

for /f "tokens=1 delims=" %%i in (%~dp0ALI1416.txt) do (
  md %%i\.git\objects\info
  md %%i\.git\objects\pack
  md %%i\.git\refs\heads
  md %%i\.git\refs\tags
  attrib +h %%i\.git
  echo ref: refs/heads/master> %%i\.git\HEAD
  echo [core]> %%i\.git\config
  echo 	repositoryformatversion = ^0>> %%i\.git\config
  echo 	filemode = false>> %%i\.git\config
  echo 	bare = false>> %%i\.git\config
  echo 	logallrefupdates = true>> %%i\.git\config
  echo 	symlinks = false>> %%i\.git\config
  echo 	ignorecase = true>> %%i\.git\config
  echo [remote "origin"]>> %%i\.git\config
  echo 	url = git@gitee.com:ALI1416/%%i.git>> %%i\.git\config
  echo 	url = git@github.com:ALI1416/%%i.git>> %%i\.git\config
  echo 	fetch = +refs/heads/*:refs/remotes/origin/*>> %%i\.git\config
  echo [branch "master"]>> %%i\.git\config
  echo 	remote = origin>> %%i\.git\config
  echo 	merge = refs/heads/master>> %%i\.git\config
)

pause

:end
