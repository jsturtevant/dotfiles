#!/bin/bash

version="v0.22.0"
kubie=$(mktemp)
curl -Lo $kubie https://github.com/sbstp/kubie/releases/download/$version/kubie-linux-amd64
chmod +x $kubie
sudo mv $kubie /usr/local/bin/kubie

kubecompletion=$(mktemp)
curl -Lo $kubecompletion https://raw.githubusercontent.com/sbstp/kubie/$version/completion/kubie.bash
chmod +x $kubecompletion
sudo cp $kubecompletion /etc/bash_completion.d/kubie
