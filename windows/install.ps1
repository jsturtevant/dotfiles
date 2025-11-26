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
winget install --id LLVM.LLVM
winget install --id Microsoft.VisualStudio.2022.BuildTools --override `
    "--wait --quiet `
    --add Microsoft.VisualStudio.Workload.VCTools `
    --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 `
    --add Microsoft.VisualStudio.Component.VC.Llvm.Clang `
    --add Microsoft.VisualStudio.Component.VC.Llvm.ClangToolset `
    --add Microsoft.VisualStudio.Component.Windows11SDK.26100 `
    --installPath C:\BuildTools"

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

$vsDevShell = 'C:\BuildTools\Common7\Tools\Launch-VsDevShell.ps1'
$vsDevShellCommand = ". `$vsDevShell"
if ($profileContent -notmatch [regex]::Escape($vsDevShellCommand)) {
    Add-Content -Path $PROFILE -Value $vsDevShellCommand
}

#terminal
#figure out to update settings for now see config/shortcuts.json