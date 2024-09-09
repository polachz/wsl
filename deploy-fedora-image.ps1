[CmdletBinding(SupportsShouldProcess=$True)]
param (
	[Parameter(Mandatory)][string]$InstanceName,
    [string]$UserName = "polach",
    [switch]$OverrideResolvConf,
    [switch]$InstallCA
)

$wsl_image_name = 'wsl-fedora'

$wsl_image_path = "$PSScriptRoot\Images\Fedora\$wsl_image_name.tgz"

& "$PSScriptRoot\scripts\deploy-wsl2-image.ps1" -OverrideResolvConf:$OverrideResolvConf -InstallCA:$InstallCA `
        -InstanceName $InstanceName -UserName $UserName -Image $wsl_image_path -DisksDir $PSScriptRoot\Disks 
