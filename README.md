# WSL Templates Repo

This repository is used to easily deploy my customized WSL images on any computer by easy and automated way.

It is using my [wsl-scripts](https://github.com/polachz/wsl-scripts) repository for these actions, but provide special customizations by bootstrapping etc.

You can use this repo as inspiration how things can be done. 

Main informations and script parameters are available [here](https://github.com/polachz/wsl-scripts). Please do not forget to inspect this link!!!

## Fedora

#### How to create image from docker-hub: 
```PowerShell
PowerShell.exe -ExecutionPolicy Bypass -File .\get-fedora-image.ps1 
```
Add **-Force** parameter to overwrite existing image if necessary.

#### Deployment of the fresh instance from the previously downloaded image:
```PowerShell
PowerShell.exe -ExecutionPolicy Bypass -File .\deploy-fedora-image.ps1 -InstanceName Fedora-37 -UserName liuser
```

#### Deployment with resolv conf override and internal CA (ZScaler)
```PowerShell
PowerShell.exe -ExecutionPolicy Bypass -File .\deploy-fedora-image.ps1 -InstanceName Fedora-37 -UserName liuser  -OverrideResolvConf -InstallCA
```

## Static WSL network

Start:
```shell
make_wsl_net_static.bat
```
Details can be found in the mian scripts repo [Static WSL Subnet Script](https://github.com/polachz/wsl-scripts#static-wsl-subnet-script)