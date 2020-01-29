$nombrefile = Read-Host 'Dime el nombre para los archivos'
$numfile = Read-Host 'Dime el numero de archivos que quieres crear'
$contador = 0
DO
{
$contador=$contador + 1
 Write-Output "Este es el archivo número $contador" > C:\powershell\$nombrefile$contador.txt


} while ($contador -lt $numfile)
