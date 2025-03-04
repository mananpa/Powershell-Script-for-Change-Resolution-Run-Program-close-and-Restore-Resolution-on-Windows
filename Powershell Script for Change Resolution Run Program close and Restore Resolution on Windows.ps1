# Install DisplaySettings
Install-Module -Scope CurrentUser -Force -Name DisplaySettings

# Application path
$appPath = "C:\Program Files\TeamViewer\TeamViewer.exe"
# New resolution
$newWidth = 1400
$newHeight = 1050
# Save original resolution
$originalResolution = Get-DisplayResolution

# Launch the application
Start-Process $appPath

# Change the resolution
Set-DisplayResolution -Width $newWidth -Height $newHeight

# Wait for the application to close
$process = Get-Process | Where-Object { $_.Path -eq $appPath }
while ($process -ne $null) {
    Start-Sleep -Seconds 5
    $process = Get-Process | Where-Object { $_.Path -eq $appPath }
}

# Revert to the original resolution
Set-DisplayResolution -Width 1920 -Height 1080