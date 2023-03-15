$folder = $PSScriptRoot
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $folder
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

$changeAction = {    
    $exclude = "*~*"
    $eventPath = $event.SourceEventArgs.FullPath
    if (-not ($eventPath -like $exclude)) {
        $eventTime = Get-Date
        $rocYear = $eventTime.Year - 1911
        $eventDate = "$($rocYear.ToString("000"))/$($eventTime.ToString("MM/dd HH:mm:ss"))"
        $eventType = $event.SourceEventArgs.ChangeType        
        $eventMessage = "$eventDate - $eventType - $(Split-Path $eventPath -Leaf)"
        $folderPath = Split-Path $eventPath
        $logFile = "$folderPath\~Changelog.txt"   
        Add-Content -Path $logFile -Value $eventMessage
    }
}

Register-ObjectEvent $watcher "Created" -Action $changeAction
Register-ObjectEvent $watcher "Deleted" -Action $changeAction
Register-ObjectEvent $watcher "Changed" -Action $changeAction
Register-ObjectEvent $watcher "Renamed" -Action $changeAction

Read-Host "Press Enter to exit"