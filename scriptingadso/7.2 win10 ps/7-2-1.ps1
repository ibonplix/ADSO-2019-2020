New-item -path C:\Alumnos –type directory
New-item -path C:\Profesores –type directory
New-item -path C:\Comun –type directory
New-Item -Path C:\Comun -Name "normas.txt" -ItemType "file"
New-Item -Path C:\Comun -Name "evaluaciones.txt" -ItemType "file"
for($i=1
     $i -le 200
     $i++){
       New-item -path C:\Alumnos\Alumno$i –type directory 
     }
for($i=1
     $i -le 20
     $i++){
       New-item -path C:\Profesores\Profesor$i –type directory 
     }

