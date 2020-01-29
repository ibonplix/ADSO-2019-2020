#!/bin/bash
var=1
while [ $var != 0 ]; do
	echo 'Introduzca un el path de la carpeta en la que quieres contar el numero de archivos:'
	read file
	if [ -d $file ];
	then
	numarch=$(ls $file | wc -l)
	echo "En $file hay $numarch archivos"
	var=0
	else
		echo "Esa carpeta no existe."
	fi
done
