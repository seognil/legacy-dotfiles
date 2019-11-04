#!/bin/sh

# * git
sudo apt install -y git

# * node 12 LTS
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# * yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
