#!/bin/bash
echo 'Introduzca un  valor para la variable var1:'
read file
numarch=$(ls $file | wc -l)
echo "En $file hay $numarch archivos"
