$notepadProcesses = Get-Process -Name Notepad
$input = Read-Host "There are" $notepadProcesses.Count"processes with the name Notepad, proceed? Y/N"
if ($input -eq "y"){
Stop-Process -Name Notepad
Write-Host -ForegroundColor Red "The processes have been killed"
}
else {
Write-Host -ForegroundColor Green "The processes have not been killed"
}