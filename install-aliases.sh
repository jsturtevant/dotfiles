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
