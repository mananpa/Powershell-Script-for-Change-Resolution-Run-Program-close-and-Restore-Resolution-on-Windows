# Powershell Script for Change Resolution Run Program close and Restore Resolution on Windows

**_Change the following line to run your program:_**

$appPath = "C:\Program Files\TeamViewer\TeamViewer.exe"

**_Change the following line to change the new resolution compatible with your screen:_**

$newWidth = 1400
$newHeight = 1050

**_Revert to the original resolution:_**

Set-DisplayResolution -Width 1920 -Height 1080
