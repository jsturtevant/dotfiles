## Windows

1. [Install winget](https://docs.microsoft.com/en-us/windows/package-manager/winget/#install-winget)
1. Run `winget install --id git.git` and clone this repo
1. `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`
1. Run the [install file](windows/install.ps1) in [Windows](windows) folder

### Helpful links

- https://github.com/microsoft/winget-cli
- https://github.com/microsoft/winget-pkgs
- https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits

## Linux

For use with any Linux box (included WSL2)  or [Codespaces](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-codespaces-for-your-account)

Install everything (including packes and tools).  This takes a few minutes.

`./install-all.sh`

Install for codespaces (only aliases and custom shell):

```
./bootstrap.sh
```