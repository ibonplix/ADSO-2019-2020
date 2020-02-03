echo "Dime un numero de 1 al 7"
read num
arraysemana=(lunes martes miercoles jueves viernes sabado domingo)
dia=$(($num -1))
echo ${arraysemana[$dia]}
