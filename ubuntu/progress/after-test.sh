#!/bin/sh

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
