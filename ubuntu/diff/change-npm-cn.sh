#!/bin/sh

# * nvm
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

# * set nrm
sudo npm i -g nrm --registry=https://registry.npm.taobao.org
nrm use taobao
