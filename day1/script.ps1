$inputText = Get-Content day1\input.txt
$sum = 0
#------ part 2
$map = [ordered]@{one = "o1e";  two = "t2o"; three = "t3e"; four = "f4r"; five = "f5e"; six = "s6x"; seven = "s7n";  eight = "e8t"; nine = "n9e"}

foreach ($i in $map.Keys) {
    $inputText = $inputText -replace $i, $map[$i]
}
#------ 

foreach($line in $inputText){
    $numbers = $line -replace "[^0-9]" , ''
    $sum += [int]($numbers[0] + $numbers[-1])
}

Write-Host $sum