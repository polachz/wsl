
[CmdletBinding(SupportsShouldProcess=$True)]
param (
    [switch]$Force
)

if(-not ($Force.IsPresent)){
		& "$PSScriptRoot\scripts\download-wsl2-image.ps1" -Image library/fedora -Destination $PSScriptRoot\Images\Fedora
    }else{
        & "$PSScriptRoot\scripts\download-wsl2-image.ps1" -Force -Image library/fedora -Destination $PSScriptRoot\Images\Fedora
    }



