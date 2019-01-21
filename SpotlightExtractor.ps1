Clear-Host

#Spotlight Picture Extractor
# 2019 Mario Besen

set-location $env:USERPROFILE\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets

Write-Host "Where would you like to save pictures?"

New-Item -ItemType Directory -Path C:\ -Name Spotlight
Copy-Item $env:USERPROFILE\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets -Destination c:\Spotlight -Recurse
Set-Location C:\Spotlight
Get-ChildItem | %{Rename-Item $_ -NewName ("SpotlightPhoto_{0}.jpg"-f $nr++)}