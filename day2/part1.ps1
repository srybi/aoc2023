$MAX_RED = 12
$MAX_GREEN = 13
$MAX_BLUE = 14

$inputText = Get-Content .\day2\input.txt
$sumPossible = 0

foreach($line in $inputText){
    $gameId = [int](($line -split ":")[0] -replace "[^0-9]" , '')
    $cubes = ($line -split ": ")[1] -replace ";", "," -split ","
    $possible = $true

    foreach($cube in $cubes){
        $value = [int]($cube -replace "[^0-9]" , '')
        switch -Regex ($cube){
            'red' {
                if($value -gt $MAX_RED){
                    $possible = $false
                    break
                }
            }
            'green' {
                if($value -gt $MAX_GREEN){
                    $possible = $false
                    break
                }
            }
            'blue' {
                if($value -gt $MAX_BLUE){
                    $possible = $false
                    break
                }
            }
        }
    }

    if($possible){
        $sumPossible += $gameId
    }
    
}

Write-Host $sumPossible
