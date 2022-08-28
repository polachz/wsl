powershell.exe -command "& { powershell.exe -ExecutionPolicy Bypass -file .\scripts\make-wsl-net-static.ps1 -ConfigFile .\wsl-net.json  2>&1 | tee .\boot.log}"
