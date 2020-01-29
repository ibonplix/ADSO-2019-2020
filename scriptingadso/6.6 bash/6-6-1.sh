#!/bin/bash
total=1
while [ -n "$1" ]; do # while loop starts
    total=$(($total + 1))
    suma=$(($suma + $1))
    shift
done
    echo "La suma de todos los parametros es: " $suma
