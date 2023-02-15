[CmdletBinding(SupportsShouldProcess=$True)]
param (
	[Parameter(Mandatory)][string]$InstanceName,
    [string]$UserName = "polach",
    [switch]$OverrideResolvConf,
    [switch]$InstallCA
)

& "$PSScriptRoot\scripts\deploy-wsl2-image.ps1" -overrideResolvConf:$OverrideResolvConf -InstallCA:$InstallCA `
        -InstanceName $InstanceName -UserName $UserName -Image $PSScriptRoot\Images\Fedora\fedora.tgz -DisksDir $PSScriptRoot\Disks 
