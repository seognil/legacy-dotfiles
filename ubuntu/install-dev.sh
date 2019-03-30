#!/bin/sh


# * ---------------- add source and mirror

# * apt
sh -c "$(curl -fsSL https://raw.githubusercontent.com/seognil-forker/Ubuntu-China-Source/self/ChangeSource.sh) 18 ali"

# * node 10 LTS
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
# sudo sed -i 's/deb.nodesource.com\/node_...x/mirrors.tuna.tsinghua.edu.cn\/nodesource\/deb_10.x\//g' /etc/apt/sources.list.d/nodesource.list
sudo sed -i 's/deb.nodesource.com\/node_...x/mirrors.ustc.edu.cn\/nodesource\/deb\/node_10.x/g' /etc/apt/sources.list.d/nodesource.list

# * yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# * update source
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

# * ---------------- update system

sudo apt update
sudo apt upgrade -y && sudo apt full-upgrade -y
sudo apt autoremove -y && sudo apt clean -y

# * ---------------- npm global

# * set nrm
sudo npm i -g nrm --registry=https://registry.npm.taobao.org
nrm use taobao

# * npm upgrade
sudo npm i -g npm

# * yarn
sudo yarn global add cloc @vue/cli create-react-app http-server

# * ---------------- config zsh

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/seognil/dotfiles/master/ubuntu/zsh-custom.sh)"

# * ---------------- testing

screenfetch
echo -n "node -v: "
node -v
echo -n "npm -v: "
npm -v
echo -n "yarn -v: "
yarn -v
echo -n "nrm current: "
nrm current

echo ""

echo -n "npm -g: "
sudo npm -g list --depth 0
echo -n "yarn global: "
sudo yarn global list

echo ""

# * ---------------- ending dive into zsh

echo "---------------- Almost finish ----------------"

printf "${BLUE}Time to change your default shell to zsh!${NORMAL}\n"
chsh -s $(grep /zsh$ /etc/shells | tail -1)

env zsh

