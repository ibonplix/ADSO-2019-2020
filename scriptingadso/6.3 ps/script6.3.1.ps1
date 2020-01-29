$num=0
$suma=0
DO
{
$num = Read-Host 'Dime numeros y los ire sumando hasta que pongas un 0'
$suma= [int]$suma + [int]$num
} While ($num -ne 0)
Write-Host "suma: $suma"