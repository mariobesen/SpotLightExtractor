Clear-Host

#Spotlight Picture Extractor
# 2019 Mario Besen

$SpotlightFolder = set-location $env:USERPROFILE\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets

Write-Host "Where would you like to save pictures?"

New-Item -ItemType Directory -Path C:\ -Name Spotlight
Copy-Item $SpotlightFolder -Destination c:\Spotlight -force