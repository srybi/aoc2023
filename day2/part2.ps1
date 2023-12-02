$inputText = Get-Content .\day2\input.txt
$sum = 0

foreach($line in $inputText){
    $cubes = ($line -split ": ")[1] -replace ";", "," -split ","
    $maxRed = -1
    $maxGreen = -1
    $maxBlue = -1


    foreach($cube in $cubes){
        $value = [int]($cube -replace "[^0-9]" , '')
        switch -Regex ($cube){
            'red' {
                if($value -gt $maxRed){
                    $maxRed = $value
                    break
                }
            }
            'green' {
                if($value -gt $maxGreen){
                    $maxGreen = $value
                    break
                }
            }
            'blue' {
                if($value -gt $maxBlue){
                    $maxBlue = $value
                    break
                }
            }
        }
    }
    $sum += ($maxRed * $maxGreen * $maxBlue)
    
}

Write-Host $sum
