#!/bin/bash

kubie=$(mktemp)
curl -Lo $kubie https://github.com/sbstp/kubie/releases/download/v0.15.1/kubie-linux-amd64
chmod +x $kubie
sudo mv $kubie /usr/local/bin/kubie

kubecompletion=$(mktemp)
curl -Lo $kubecompletion https://raw.githubusercontent.com/sbstp/kubie/master/completion/kubie.bash
sudo cp $kubecompletion /etc/bash_completion.d/kubie