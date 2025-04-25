#!/bin/bash

packages=(
  "curl"
  "apt-transport-https" 
  "lsb-release"
  "gnupg"
  "ca-certificates"
  "software-properties-common"
  "jq"
  "git"
  "build-essential"
  "tmux"
  "vim"
  "zip"
  "unzip"
  "silversearcher-ag"
  "net-tools"
)

# to get latest versions of git
sudo add-apt-repository ppa:git-core/ppa

sudo apt-get update
sudo apt-get install -y ${packages[@]}

# install plug for vim
curl -fLo "$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
