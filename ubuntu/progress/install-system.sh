#!/bin/sh

# * ---------------- update source

sudo apt update

# * ---------------- install zsh

sudo apt install -y zsh

# * silent install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
# git clone https://github.com/robbyrussell/oh-my-zsh
# bash ./oh-my-zsh/tools/install.sh --unattended

# * ---------------- install soft

sudo apt install -y git screenfetch tree
sudo apt install -y nodejs yarn
sudo apt install -y gcc g++ make

# * nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh
# git clone https://github.com/nvm-sh/nvm
# bash ./nvm/v0.34.0/install.sh

# * ---------------- update system

sudo apt update
sudo apt upgrade -y && sudo apt full-upgrade -y
sudo apt autoremove -y && sudo apt clean -y
