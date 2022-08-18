winget install --id Git.Git
winget install --id Microsoft.WindowsTerminal
winget install --id Microsoft.Teams
winget install --id Microsoft.VisualStudioCode
winget install --id Greenshot.Greenshot
winget install --id Notepad++.Notepad++
winget install --id Starship.Starship
                        
wsl --install -d Ubuntu-20.04

# install https://starship.rs/
mkdir -p ~/.local/share/fonts
curl -fLo "~/.local/share/fonts/FiraMono Nerd Font Complete.otf" \
    https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraMono/complete/FiraMono%20Nerd%20Font%20Complete.otf
Add-Content -Path $PROFILE -Value "Invoke-Expression (&starship init powershell)"

# caps to ctrl
curl.exe -LO https://download.sysinternals.com/files/Ctrl2Cap.zip
Expand-Archive Ctrl2Cap.zip
pushd Ctrl2Cap
.ctrl2cap /install
popd

# aliases
Add-Content -Path $PROFILE -Value "set-alias -name k -value kubectl"