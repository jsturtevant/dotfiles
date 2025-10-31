winget install --id Git.Git
winget install --id Microsoft.WindowsTerminal
winget install --id Microsoft.Teams
winget install --id Microsoft.VisualStudioCode
winget install --id Greenshot.Greenshot
winget install --id Notepad++.Notepad++
winget install --id Starship.Starship
winget install --id Microsoft.PowerShell
winget install --id Rustlang.Rustup
winget install --id GitHub.cli
winget install --id GoLang.Go
winget install --id Microsoft.Sysinternals.Ctrl2Cap

# install https://starship.rs/
# Ensure profile file exists (it's a file path, not a directory)
if (-not (Test-Path -Path $PROFILE)) {
	New-Item -Path $PROFILE -ItemType File -Force | Out-Null
}

$starshipInit = 'Invoke-Expression (&starship init powershell)'
$profileContent = if (Test-Path -Path $PROFILE) { Get-Content -Path $PROFILE -Raw } else { '' }
if ($profileContent -notmatch [regex]::Escape($starshipInit)) {
    Add-Content -Path $PROFILE -Value $starshipInit
}

# aliases
$kubectlAlias = 'Set-Alias -Name k -Value kubectl'
if ($profileContent -notmatch [regex]::Escape($kubectlAlias)) {
    Add-Content -Path $PROFILE -Value $kubectlAlias
}

#terminal
#figure out to update settings for now see config/shortcuts.json