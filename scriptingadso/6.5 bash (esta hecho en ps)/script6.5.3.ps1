$pathfile = Read-Host 'Dime el path del archivo que quieres verificar si existe'
$exist=Test-Path $pathfile -PathType Leaf
if ($exist -like "False"){
    Write "Ese archivo no existe"

} elseif ($exist -like "True"){
    Write "Ese archivo si existe"
        $extensionfile = [System.IO.Path]::GetExtension("$pathfile")
        write "Extensión del archivo: $extensionfile"
        if ($extensionfile -like ".exe"){
            write "Parece que es un archivo ejecutable, lo ejectuto: "
            & $pathfile

        } else {
            write "Este archivo no es un ejectuable, procedo a cambiarle la extension y añadirle el atributo para poder ejecutarlo:"
            $tam_ext = $extensionfile.length
            $tam_file = $pathfile.length
            $archivosinext = $pathfile.Substring(0,$tam_file - $tam_ext) + ".exe"
            Rename-Item $pathfile $archivosinext
            & $archivosinext

        }
}