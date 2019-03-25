#!/bin/sh


# * ---------------- source

sh -c "$(curl -fsSL https://raw.githubusercontent.com/quanweiGithub/Ubuntu-China-Source/master/ChangeSource.sh)"

# * ---------------- install zsh

sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# * ---------------- install screenfetch

sudo apt install -y screenfetch

# * ---------------- install nvm

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh

# * ---------------- install node

curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt install -y nodejs

sudo apt install -y gcc g++ make

# * ---------------- install yarn

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

# * ---------------- update system again

sudo apt update -y && sudo apt upgrade -y && sudo apt full-upgrade -y
sudo apt autoremove -y && sudo apt clean -y

# * ---------------- set nrm

sudo npm i -g nrm --registry=https://registry.npm.taobao.org
nrm use taobao

# * ---------------- yarn global

sudo yarn global add cloc @vue/cli create-react-app http-server

# * ---------------- config bash

# echo zsh >> ~/.bashrc

# * ---------------- config zsh

