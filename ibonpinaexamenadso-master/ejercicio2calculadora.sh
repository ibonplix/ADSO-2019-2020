#!/bin/bash
rm operaciones.txt
touch operaciones.txt
A=$1
B=$2
i="y"
while [ $i = "y" ]
do
echo "1-Sumar"
echo "2-Restar"
echo "3-Producto"
echo "4-Division"
echo "5-Porcentaje"
echo "6-GenerarArchivo"
echo "Elige entre el 1 y el 6"
read z
case $z in
    1)C=$(($A + $B))
     suma="El resultado de la suma de los operadores $A y $B es $C"
     echo "El resultado de la suma de los operadores $A y $B es $C" ;;
    2)C=$(($A - $B))
     resta="El resultado de la resta de los operadores $A y $B es $C"
     echo "El resultado de la resta de los operadores $A y $B es $C" ;;
    3)C=$(($A * $B))
     producto="El resultado del producto de los operadores $A y $B es $C"
     echo "El resultado del producto de los operadores $A y $B es $C" ;;
    4)if [ "$B" = "0" ]
		then
		echo "El divisor no puede ser 0"
		else
		C=$(($A / $B))
		D=$(($A % $B))
     		div="El resultado de la division de los operadores $A y $B es $C y su resto es $D"
     		echo "El resultado de la division de los operadores $A y $B es $C y su resto es $D"
		fi ;;
    5)C=$((($A * 100) / $B))
     porcen="$A respecto a $B supone un porcentaje de $C"
     echo "$A respecto a $B supone un porcentaje de $C" ;;
    6)echo $suma >> operaciones.txt
      echo $resta >> operaciones.txt 
      echo $producto >> operaciones.txt
      echo $div >> operaciones.txt
      echo $porcen >> operaciones.txt 
	exit 0 ;;
    *)echo "Tu selección es incorrecta";;
esac
echo "Quieres continuar (y/n)) ?"
read i
if [ $i != "y" ]
then
    exit
fi
done
