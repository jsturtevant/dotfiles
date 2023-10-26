#!/bin/bash

curl -LO https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

packages=(
  "apt-transport-https" 
  "software-properties-common"
  "powershell" 
)

sudo apt-get update
sudo apt-get install ${packages[@]}

sudo apt-get update
sudo apt-get install -y powershell
