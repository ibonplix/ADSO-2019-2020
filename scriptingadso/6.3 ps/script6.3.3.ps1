$num= Get-Random -Minimum 1 -Maximum 100
$contador= 0
DO
{
$contador=$contador + 1
$numusu = Read-Host 'Dime un numero entre el 1 y el 100 a ver si aciertas'
if($numusu -eq 0) {
    break
}
if($numusu -gt $num ) {
    Write-Host "Pon un numero mas bajo pajaro"
}elseif ($numusu -lt $num ){
   Write-Host "Pon un numero mas alto titan"
}
} while ($numusu -ne $num)

Write-Host "Has hecho $contador intentos"

if($numusu -eq 0) {
    Write-Host "Eres un puto matao"
}
if($numusu -eq $num ) {
    Write-Host "Eres el puto amo"
}