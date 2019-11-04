#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/seognil/dotfiles/master/ubuntu/progress/install-basic.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/seognil/dotfiles/master/ubuntu/progress/install-system.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/seognil/dotfiles/master/ubuntu/progress/install-npm.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/seognil/dotfiles/master/ubuntu/progress/after-test.sh)"
