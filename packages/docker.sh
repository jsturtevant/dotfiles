#!/bin/bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
    sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

packages=(
  "curl"
  "apt-transport-https" 
  "lsb-release"
  "gnupg"
  "ca-certificates"
  "software-properties-common"
  "docker-ce" 
  "docker-ce-cli" 
  "containerd.io"
)

sudo apt-get update
sudo apt-get install -y ${packages[@]}

# set up docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

if ! sudo grep -q "[boot]" /etc/wsl.conf; then
  echo "[boot]" | sudo tee -a /etc/wsl.conf
  echo "command = \"service docker start\"" | sudo tee -a /etc/wsl.conf
fi