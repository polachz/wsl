[CmdletBinding(SupportsShouldProcess=$True)]
param (
	[Parameter(Mandatory)][string]$InstanceName,
    [string]$UserName = "polach",
)

& "$PSScriptRoot\scripts\deploy-wsl2-image.ps1" -InstanceName $InstanceName -UserName $UserName -Image $PSScriptRoot\Images\Fedora\fedora.tgz -DisksDir $PSScriptRoot\Disks