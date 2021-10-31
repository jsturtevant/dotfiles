#!/bin/bash

./install-aliases.sh
./install-shell.sh
find ./packages -exec ./{} \;