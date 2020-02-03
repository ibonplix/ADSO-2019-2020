num=1
until [  $num = 0 ]; do
	echo "Dime un numero de 1 al 7 o teclea 0 para salir"
	read num
	arraysemana=(lunes martes miercoles jueves viernes sabado domingo)
	dia=$(($num -1))
	echo ${arraysemana[$dia]}
done
echo "adios"
