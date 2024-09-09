
[CmdletBinding(SupportsShouldProcess=$True)]
param (
    [switch]$Force
)

#$docker_repo='library/fedora'
$docker_repo='polachz/wsl-fedora'


if(-not ($Force.IsPresent)){
		& "$PSScriptRoot\scripts\download-wsl2-image.ps1" -Image $docker_repo -Destination $PSScriptRoot\Images\Fedora
    }else{
        & "$PSScriptRoot\scripts\download-wsl2-image.ps1" -Force -Image $docker_repo -Destination $PSScriptRoot\Images\Fedora
    }



