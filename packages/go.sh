#!/bin/bash

version="1.17.2"
go=$(mktemp)
curl -Lo $go https://golang.org/dl/go$version.linux-amd64.tar.gz
sudo rm -rf /usr/local/go 
sudo tar -C /usr/local -xzf $go
