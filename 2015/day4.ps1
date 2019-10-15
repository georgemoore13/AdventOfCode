$inputstring = "ckczppom"

$numberstring = 0

do {

$mergedstring = $inputstring + $numberstring
[string]$hash = /home/georgetmoore13/AdventOfCode/2015/day4_string_function.ps1 -Algorithm MD5 -String $mergedstring | Select-Object -Property Hash -ExpandProperty Hash
$numberstring++
} until ($hash.Substring(0,5) -eq "00000")

Write-Host "The answer for the first AdventCoin is $($numberstring-1)"


$inputstring = "ckczppom"

$numberstring = 2231868

do {

$mergedstring = $inputstring + $numberstring
[string]$hash = /home/georgetmoore13/AdventOfCode/2015/day4_string_function.ps1 -Algorithm MD5 -String $mergedstring | Select-Object -Property Hash -ExpandProperty Hash
$numberstring++
} until ($hash.Substring(0,6) -eq "000000")

Write-Host "The answer for the second AdventCoin is $($numberstring-1)"
