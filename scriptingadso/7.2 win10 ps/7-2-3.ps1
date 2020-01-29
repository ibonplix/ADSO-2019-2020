$numcarpetas=(Get-ChildItem C:\Profesores).Count;
for($i=1
     $i -le $numcarpetas
     $i++){
       rename-item "c:\Profesores\Profesor$i" -NewName "Prof$i"
     }
     