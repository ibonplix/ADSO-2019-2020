[int]$precio = Read-Host 'Dime un precio entre 0 y 2000000'
[int]$nadquis = Read-Host 'Dime un nivel adquisitivo entre 0 y 100'
if ($precio -lt 0 -or $precio -gt 2000000){
    write "El precio debe estar comprendido entre 0 y 2000000"
} else {
    if ($nadquis -lt 0 -or $nadquis -gt 100){
        write "El nivel adquisitivo debe estar comprendido entre 0 y 100"
    }else{
        if ($nadquis -gt 89){
                write "es barato"
        }elseif($nadquis -gt 49 -and $nadquis -lt 90){
            if($precio -lt 1000000){
                write "es barato"
            }else{
                write "es caro"
            }
        }elseif($nadquis -gt 29 -and $nadquis -lt 50){
            if($precio -lt 100000){
                write "puede conseguirse"
            }else{
                write "es caro"
            }
        }elseif($nadquis -lt 10){
                write "es excesivamente caro"
        }elseif($nadquis -lt 30){
                write "es carísimo"
        }
    }
}