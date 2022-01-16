#!/bin/bash

kustomize=$(mktemp -d)
curl -L -o $kustomize/kustomize.tar.gz  https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.4.1/kustomize_v4.4.1_linux_amd64.tar.gz
sudo tar -C /usr/local/bin -xzf $kustomize/kustomize.tar.gz
