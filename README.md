# WSL Templates Repo

This repository is used to easily deploy my customized WSL images on any computer by easy and automated way.

It is using my [wsl-scripts](https://github.com/polachz/wsl-scripts) repository for these actions, but provide special customizations by bootstrapping etc.

You can use this repo as inspiration how things can be done. 

Main informations and script parameters are available [here](https://github.com/polachz/wsl-scripts). Please do not forget to inspect this link!!!


## Fedora

### Personal Docker Hub image

Due more optimized Fedora Official Images, deployment script doesn't work correctly with the Fedora Officila Image for now.  Missing the _mount_ command in the [Fedora Official Image](https://hub.docker.com/_/fedora) is the main reason of this.

I have tried to figure out a workarround, but the best solution is to build own Fedora Docker Image, based on this official one. I have created GitHub Repository [wsl-fedora](https://github.com/polachz/wsl-fedora) for this task. The repository has configured Github Actions script to build the modified image and push it to the DockerHub.

You can find build results of the GitGub repository Dockerfile on my DockerHub repository [polachz/wsl-fedora](https://hub.docker.com/r/polachz/wsl-fedora).

Feel free to use the image for your Fedora deployments directly if you can. If you are afraid about the image security then you can clone and modify my GitHub repository [wsl-fedora](https://github.com/polachz/wsl-fedora) and build everything yourself. I think that this process is straightforward and you can find many how-to posts about this over the Internet.

------------------------------

### How-To USe Scripts from The WSL Repository:

#### Download Fedora deployment image from my personal docker-hub: 
```PowerShell
PowerShell.exe -ExecutionPolicy Bypass -File .\get-fedora-image.ps1 
```
Add **-Force** parameter to overwrite existing image if necessary.

#### Deployment of the fresh Fedora WSL Instance from the previously downloaded image:
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
Details can be found in the main scripts repo [Static WSL Subnet Script](https://github.com/polachz/wsl-scripts#static-wsl-subnet-script)

----------------

## Enable WSL

run Administrator Cmd prompt or PowerShell 

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```

Download and update kernel:

```
wsl --update
```
or alternative:
```
Invoke-WebRequest -Uri https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile "$($env:userprofile)\Downloads\wsl_update_x64.msi" -UseBasicParsing
Invoke-Item "$($env:userprofile)\Downloads\wsl_update_x64.msi"
rm "$($env:userprofile)\Downloads\wsl_update_x64.msi"
```
