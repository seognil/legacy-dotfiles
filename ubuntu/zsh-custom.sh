iife () {

  # * ---------------- const path

  zshrc=${ZDOTDIR:-$HOME}/.zshrc

  cusDotPath=.zsh-custom

  mkdir ~/$cusDotPath
  cd ~/$cusDotPath

  # * ---------------- custom

  git clone https://github.com/seognil/dotfiles
  cp -r dotfiles/ubuntu/$cusDotPath/. ./

  echo "source ~/$cusDotPath/index.zsh" >> $zshrc

  sudo rm -rf dotfiles

  # * ---------------- highlight

  hl=zsh-syntax-highlighting

  git clone https://github.com/zsh-users/$hl.git $hl

  echo "source $cusDotPath/$hl/$hl.zsh" >> $zshrc

}

iife
