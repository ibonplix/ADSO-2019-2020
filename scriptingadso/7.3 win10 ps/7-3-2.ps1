New-item -path C:\Ejercicio3 –type directory
New-item -path C:\Ejercicio3\Musica –type directory
New-item -path C:\Ejercicio3\Documentos –type directory
New-item -path C:\Ejercicio3\Documentos\Personal –type directory
New-item -path C:\Ejercicio3\Documentos\Trabajo –type directory

New-Item -Path C:\Ejercicio3\Musica -Name "discos.txt" -ItemType "file"
New-Item -Path C:\Ejercicio3\Musica -Name "grupos.doc" -ItemType "file"

New-Item -Path C:\Ejercicio3\Documentos\Trabajo -Name "anuncio.txt" -ItemType "file"

New-Item -Path C:\Ejercicio3\Documentos\Personal -Name "proyecto.doc" -ItemType "file"
New-Item -Path C:\Ejercicio3\Documentos\Personal -Name "apuntes.txt" -ItemType "file"
New-Item -Path C:\Ejercicio3\Documentos\Personal -Name "viaje.jpg" -ItemType "file"

write "C:\Ejercicio3\Documentos\Trabajo\anuncio.txt"
$g=Get-ChildItem -path "C:\Ejercicio3\Documentos\Personal\*.txt" -Name
write "C:\Ejercicio3\Documentos\Personal\$g"
$g=Get-ChildItem -path "C:\Ejercicio3\Musica\g*.doc" -Name
write "C:\Ejercicio3\Musica\$g"
cd C:\Ejercicio3\Documentos
$g=Get-ChildItem -path "Personal\v*.*" -Name
write "Personal\$g"
cd C:\Ejercicio3\Documentos\Personal
$g=Get-ChildItem -path "..\Trabajo\*.txt" -Name
write "C:\Ejercicio3\Documentos\Trabajo\$g"

