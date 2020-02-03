[int]$num1= Read-Host 'Dime el primer numero'
[int]$num2= Read-Host 'Dime el segundo numero'
$numvar=0
if($num1 -lt $num2) {
   $numvar=$num1
   $num1=$num2
   $num2=$numvar
}
$suma=$num1+$num2
$rest=$num1-$num2
$div=$num1/$num2
$mult=$num1*$num2
echo "La suma de $num1 + $num2 = $suma"
echo "La resta de $num1 - $num2 = $rest"
echo "La divison de $num1 / $num2 = $div"
echo "La multiplicacion de $num1 * $num2 = $mult"

