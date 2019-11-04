#!/bin/sh

# * ---------------- update source

sudo apt update

# * ---------------- install zsh

sudo apt install -y zsh

# * silent install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed -e 's/^\s*chsh -s/sudo chsh -s/g' -e 's/^\s*env\szsh.*$/#/g')"

# * ---------------- install soft

sudo apt install -y git screenfetch tree
sudo apt install -y nodejs yarn
sudo apt install -y gcc g++ make

# * nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

# * ---------------- update system

sudo apt update
sudo apt upgrade -y && sudo apt full-upgrade -y
sudo apt autoremove -y && sudo apt clean -y
