$stringinput = Get-Content -Path /home/georgetmoore13/AdventOfCode/2015/day5_input.csv
$goodstrings = New-Object System.Collections.ArrayList
$badstrings = New-Object System.Collections.ArrayList
ForEach($string in $stringinput){
    if($string -match '(\p{L})\1+' -and $string -match '[aeiou].*[aeiou].*[aeiou]' -and $string -notlike "*ab*" -and $string -notlike "*cd*" -and $string -notlike "*pq*" -and $string -notlike "*xy*"){
      $goodstrings.Add($string) | Out-Null
}
else {
    $badstrings.Add($string) | Out-Null
}
}
Write-Host "The number of good strings for part 1 is $($goodstrings.count)"


$stringinput -split "`n" | ?{ $_ -match "(..).*\1" -and $_ -match "(.).\1" } | measure | % count
#I cheated and googled this answer ^^