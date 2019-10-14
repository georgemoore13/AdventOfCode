[array]$wrappinglist = Get-Content -Path /home/georgetmoore13/AdventOfCode/2015/day2input.csv
$totalpaper = 0
$totalribbon = 0

ForEach($item in $wrappinglist){
$dimensions = $item -split "x"
[array]$dimensionsInt = foreach($number in $dimensions) {([int]::parse($number))}
$dimensionsIntSorted = $dimensionsint | Sort-Object
$tempArea = $dimensionsInt[0] * $dimensionsint[1] * 2 + $dimensionsint[1] * $dimensionsint[2] * 2 + $dimensionsint[2] * $dimensionsint[0] * 2
$extra = $dimensionsIntSorted[0]*$dimensionsIntSorted[1]
$totalpaper = $totalpaper + $tempArea + $extra
}

Write-Host "The total wrapping paper is $totalpaper"

ForEach($item in $wrappinglist){
    $dimensions = $item -split "x"
    [array]$dimensionsInt = foreach($number in $dimensions) {([int]::parse($number))}
    $dimensionsIntSorted = $dimensionsint | Sort-Object
    $tempribbon = $dimensionsIntSorted[0]*2 + $dimensionsIntSorted[1]*2
    $tempbow = $dimensionsIntSorted[0]*$dimensionsIntSorted[1]*$dimensionsIntSorted[2]
    $totalribbon = $totalribbon + $tempribbon + $tempbow

}

Write-Host "The total ribbon is $totalribbon "
