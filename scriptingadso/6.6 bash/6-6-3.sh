#!/bin/bash
echo 'Introduzca un  valor para la variable var1:'
read var1
var2=1
until [  $var2 = 0 ]; do
echo 'Introduzca un  valor para la variable var2:'
        read var2
        suma=$(($var1 + $var2))
        echo $suma
        var1=$suma
done
