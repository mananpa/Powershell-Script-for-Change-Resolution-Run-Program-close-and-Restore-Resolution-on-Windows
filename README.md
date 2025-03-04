# Powershell Script for Change Resolution Run Program close and Restore Resolution on Windows

Change the following line to run your program:

$appPath = "C:\Program Files\TeamViewer\TeamViewer.exe"

Change the following line to change the new resolution compatible with your screen:

$newWidth = 1400
$newHeight = 1050

Revert to the original resolution:
Set-DisplayResolution -Width 1920 -Height 1080
