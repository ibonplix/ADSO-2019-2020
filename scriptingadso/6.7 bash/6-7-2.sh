echo 'dime un numero'
read number
var2=0
echo "=========================="
echo "===Tabla de multiplicar==="
echo "=========================="
until [  $var2 = 10 ]; do
        var2=$(($var2 + 1))
	multi=$(($var2 * $number))
	echo "$var2 * $number = $multi"
done
