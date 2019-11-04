#!/bin/sh

# * apt
sh -c "$(curl -fsSL https://raw.githubusercontent.com/seognil-forker/Ubuntu-China-Source/self/ChangeSource.sh) 18 ali"
# git clone https://github.com/seognil-forker/Ubuntu-China-Source
# bash ./Ubuntu-China-Source/ChangeSource.sh 18 ali

# * node
# source /etc/os-release
# $UBUNTU_CODENAME

nodesourceConfig='/etc/apt/sources.list.d/nodesource.list'
# cat $nodesourceConfig
# deb https://deb.nodesource.com/node_12.x bionic main
# deb-src https://deb.nodesource.com/node_12.x bionic main

# echo 'deb https://mirrors.tuna.tsinghua.edu.cn/nodesource/deb_12.x/ bionic main' | sudo tee $nodesourceConfig
# echo 'deb-src https://mirrors.tuna.tsinghua.edu.cn/nodesource/deb_12.x/ bionic main' | sudo tee -a $nodesourceConfig

echo 'deb https://mirrors.ustc.edu.cn/nodesource/deb/node_12.x/ bionic main' | sudo tee $nodesourceConfig
echo 'deb-src https://mirrors.ustc.edu.cn/nodesource/deb/node_12.x/ bionic main' | sudo tee -a $nodesourceConfig
