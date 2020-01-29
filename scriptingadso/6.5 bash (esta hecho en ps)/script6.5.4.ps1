[uint16]$edad = Read-Host 'Dime tu edad'
if ($edad -lt 3){
    write "bebe"
} elseif($edad -lt 11){
    write "infancia"
} elseif($edad -lt 18){
    write "adolescencia"
} elseif($edad -lt 40){
    write "juventud"
} elseif($edad -lt 65){
    write "madurez"
} elseif($edad -gt 64){
    write "vejez"
}