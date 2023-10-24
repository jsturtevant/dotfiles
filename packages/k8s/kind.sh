#!/bin/bash

kind=$(mktemp)
curl -Lo $kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x $kind
sudo mv $kind /usr/local/bin/kind