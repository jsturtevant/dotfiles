#!/bin/bash

mkdir -p ~/.local/share/fonts
pushd ~/.local/share/fonts/
curl -fLo "FiraMonoNerdFontComplete.otf" \
    https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.otf
popd

starship=$(mktemp)
curl -fsSLo $starship https://starship.rs/install.sh
chmod +x $starship 
sudo $starship -y

if ! grep -q "starship init bash" ~/.bashrc; then
  echo "wiring starship"
  echo 'eval "$(starship init bash)"' >> ~/.bashrc
fi