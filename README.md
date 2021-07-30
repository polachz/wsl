# WSL Templates Repo

This repository is used to easily deploy my customized WSL images on any computer by easy and automated way.

It is using my [wsl-scripts](https://github.com/polachz/wsl-scripts) repository for these actions, but provide special customizations by bootstrapping etc.

You can use this repo as inspiration how things can be done. 

## Fedora

How to create image from docker-hub: 

```PowerShell
PowerShell.exe -ExecutionPolicy Bypass -File .\get-fedora-image.ps1 
```
Add **-Force** parameter to overwrite existing image if necessary.

