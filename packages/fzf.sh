#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Check if go command exists
if ! command -v go &> /dev/null; then
    $BASEDIR/go.sh
fi
go install github.com/junegunn/fzf@latest
echo 'eval "$(fzf --bash)"' >> ~/.bashrc