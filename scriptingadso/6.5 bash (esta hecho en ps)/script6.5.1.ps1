$pathfile = Read-Host 'Dime el path del archivo que quieres verificar si existe'
$exist=Test-Path $pathfile -PathType Leaf
if ($exist -like "False"){
    Write "Ese archivo no existe"
} elseif ($exist -like "True"){
    Write "Ese archivo si existe"
}