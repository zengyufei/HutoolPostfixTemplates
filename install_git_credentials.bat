@echo off
echo ##################################################
echo ###该脚本可以永久的配置http和https协议的git密码###
echo ###             power by zengyufei             ###
echo ##################################################
echo __

rem 接收输入
set gitusername=
set gitpassword=
set /p gitusername=请输入username：
set /p gitpassword=请输入password：

rem 处理输入
echo __
echo https://%gitusername%:%gitpassword%@github.com > %USERPROFILE%/.git-credentials
git config --global credential.helper store
echo 'Sucess!'