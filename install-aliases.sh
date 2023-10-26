#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf ${BASEDIR}/vimrc ~/.vimrc
ln -sf ${BASEDIR}/tmux.conf ~/.tmux.conf
ln -sf ${BASEDIR}/gitconfig ~/.gitconfig
ln -sf ${BASEDIR}/dircolors ~/.dircolors
ln -sf ${BASEDIR}/bash_aliases ~/.bash_aliases
ln -snf ${BASEDIR}/aliases ~/.aliases
mkdir -p ~/.kube/
ln -sf ${BASEDIR}/kubernetes/kubie.yaml ~/.kube/kubie.yaml
mkdir -p ~/.config/
ln -sf ${BASEDIR}/starship.toml  ~/.config/starship.toml

if $CODESPACES; then
    # put empty file in place so use codespaces signing
    touch ~/.signing.gitconfig
else
    ln -sf ${BASEDIR}/signing.gitconfig ~/.signing.gitconfig
fi