Write-Host -ForegroundColor Magenta "Loading PS Profile"
foreach ($file in Get-ChildItem "$($profile | Split-Path -Parent)\Scripts" | Where-Object {$_.Name -like "*.ps1*"}){
    Import-Module "$($profile | Split-Path -Parent)\Scripts\$file"
    Write-Host -ForegroundColor Yellow "Loading $file"
}
Write-Host -ForegroundColor Green "GOOOOOO!"
