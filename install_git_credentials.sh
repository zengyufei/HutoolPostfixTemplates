#! /bin/bash
# Edit by liu.bao.long.vk@gmail.com

echo '##################################################'
echo '###该脚本可以永久的配置http和https协议的git密码###'
echo '###     power by liu.bao.long.vk@gmail.com     ###'
echo '##################################################'

echo '请输入remote url, 例如:"http://example.com"' 
read localhost
echo "请输入username"
read username
echo "请输入password"
read password

if test -e ~/.git-credentials
then
    echo '!!~/.git-credentials already exist!'
else
    echo 'Create ~/.git-credentials..'
    touch ~/.git-credentials
fi

echo 'Configure username and password..'
echo "http://$username:$password@$localhost" >> ~/.git-credentials
git config --global credential.helper store
echo 'Sucess!'