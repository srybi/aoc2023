$inputText = Get-Content day1\input.txt

$sum = 0

foreach($line in $inputText){
    $numbers = $line -replace "[^0-9]" , ''
    $sum += [int]($numbers[0] + $numbers[-1])
}

Write-Host $sum