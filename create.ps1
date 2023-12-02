$wd = Get-Location
$day = Get-Date -Format "dd"

New-Item -Path $wd -Name "day$day" -ItemType "directory"
New-Item -Path "$wd\day$day" -Name "input.txt"
New-Item -Path "$wd\day$day" -Name "part1.ps1"
New-Item -Path "$wd\day$day" -Name "part2.ps1"

$getInputStr = "`$inputText = Get-Content .\day$day\input.txt"

Out-File -FilePath "$wd\day$day\part1.ps1" -InputObject $getInputStr
Out-File -FilePath "$wd\day$day\part2.ps1" -InputObject $getInputStr