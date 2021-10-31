winget install --id Git.Git
winget install --id Microsoft.WindowsTerminal
winget install --id Microsoft.Teams
winget install --id Microsoft.VisualStudioCode
winget install --id Greenshot.Greenshot
winget install --id Notepad++.Notepad++
                        
wsl --install

# install https://starship.rs/
mkdir -p ~/.local/share/fonts
curl -fLo "~/.local/share/fonts/FiraMono Nerd Font Complete.otf" \
    https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraMono/complete/FiraMono%20Nerd%20Font%20Complete.otf

#$PROFILE
