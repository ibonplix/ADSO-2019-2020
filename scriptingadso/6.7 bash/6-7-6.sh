if [ -z "$1" ] || [ -z "$2" ];
then
	echo "los parametros no tienen valores"

else
	sum=$(($1 + $2))
	rest=$(($1 - $2))
	mult=$(($1 * $2))
	div=$(($1 / $2))
	echo "la suma de $1 + $2 = $sum"
	echo "la resta de $1 - $2 = $rest"
	echo "la multiplicacion de $1 * $2 = $mult"
	if [ $2 != 0 ];
	then
		echo "la division de $1 / $2 = $div"
		exit 0
	else
		echo "la división no se puede hacer"
	fi
fi
