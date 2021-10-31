#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
ln -s ${BASEDIR}/dircolors ~/.dircolors
ln -s ${BASEDIR}/bash_aliases ~/.bash_aliases
ln -s ${BASEDIR}/aliases ~/.aliases
mkdir -p ~/.kube/kubie.yaml
ln -s ${BASEDIR}/kubernetes/kubie.yaml ~/.kube/
