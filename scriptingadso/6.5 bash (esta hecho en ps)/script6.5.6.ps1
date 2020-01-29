function mostrarMenu 
{ 
     param ( 
           [string]$Titulo = 'Opciones del Menu' 
     ) 
     cls 
     Write-Host "================ $Titulo================" 
      
     
     Write-Host "1) Ver el contenido de un directorio" 
     Write-Host "2) Ver el contenido de un directorio mostrando el número de inodo" 
     Write-Host "3) Ver el contenido de un directorio y los ficheros ocultos" 
     Write-Host "4) Ver el contenido de un directorio listado ampliado y parando pantalla a pantalla" 
     Write-Host "4) Mostrar el contenido de un fichero y dar la opción de borrarlo." 
     Write-Host "S) Presiona 'S' para salir" 
}
do 
{ 
     mostrarMenu 
     $input = Read-Host "Elegir una Opción" 
     switch ($input) 
     { 
           '1' { 
           $pathfile = Read-Host 'Dime el path de la carpeta que quieres ver'
           Get-ChildItem -Force $pathfile
           } '2' { 
 
                'Segunda Opción' 
           } '3' { 
 
                'Tercera Opción' 
           } 's' { 
                return 
           }  
     } 
     pause 

} 
until ($input -eq 's')