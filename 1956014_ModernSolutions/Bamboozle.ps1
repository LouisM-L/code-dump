 $path = "C:\Users\steve\Desktop"
 $letters = "ABCDEFGHIJKLMNOPQRSTUVWXZ"
 $random = Get-Random -Maximum 26
 $chosen =  $letters[$random]
 Write-host "Did you hear about the crazy IT technician who set alight to the side of a house?
He liked a good firewall. The chosen letter is " $chosen
$files = Get-ChildItem $path\$chosen*
Write-Output $files
Remove-Item $files -Exclude $files -WhatIf
Write-host -ForegroundColor Green "Your files have been deleted"