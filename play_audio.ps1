param([string]$audioPath)
Add-Type -AssemblyName presentationCore
$player = New-Object system.windows.media.mediaplayer
$player.Open($audioPath)
$player.Play()
Start-Sleep -Milliseconds 500
while ($player.NaturalDuration.HasTimeSpan -eq $false) { Start-Sleep -Milliseconds 100 }
$duration = $player.NaturalDuration.TimeSpan.TotalSeconds
Start-Sleep -Seconds $duration
$player.Close()
