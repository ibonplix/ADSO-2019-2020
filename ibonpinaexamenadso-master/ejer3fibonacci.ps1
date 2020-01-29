[int]$num1 = Read-Host 'Dime el primer elemento'
[int]$num2 = Read-Host 'Dime el segundo elemento'
[int]$numtemp = 0
    if($num1 -gt $num2) {
    $numtemp = $num1
    $num1 = $num2
    $num2 = $numtemp
}
[int]$num3 = $num2
[int]$contador = 0
Write-host 'La sucesion de Fibonacci para los siguientes 20 elementos es:'
     while ($contador -lt 20) {
           $num3=$num1+$num2
           $num1 = $num2
           $num2 = $num3
           $contador = $contador + 1
           Write $num3

     }


