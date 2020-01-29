#!/bin/bash
# un script para poder leer entradas
# un archivo temporal donde guardar lo que vamos leyendo
while :
do
fun_nombreadaptador(){
OUTPUT="/tmp/input.txt"
dialog --title "Nombre de Adaptador" \
--backtitle "Configurador de Red" \
--inputbox "Indica el nombre del adaptador" 8 60 2>$OUTPUT
response=$?
name=$(<$OUTPUT)
case $response in
        0) nomadap=$name ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac
rm /tmp/input.txt
}
fun_ip(){
OUTPUT="/tmp/input.txt"
dialog --title "Ip de Adaptador" \
--backtitle "Configurador de Red" \
--inputbox "Indica la direccion ip del adaptador" 8 60 2>$OUTPUT
response=$?
name=$(<$OUTPUT)
case $response in
        0) ip=$name ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac
rm /tmp/input.txt
}
fun_mascara(){
OUTPUT="/tmp/input.txt"
dialog --title "Mascara de Red" \
--backtitle "Configurador de Red" \
--inputbox "Indica la Mascara de Red" 8 60 2>$OUTPUT
response=$?
name=$(<$OUTPUT)
case $response in
        0) mask=$name ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac
rm /tmp/input.txt
}
fun_gateway(){
OUTPUT="/tmp/input.txt"
dialog --title "Gateway del Adaptador" \
--backtitle "Configurador de Red" \
--inputbox "Indica el Gateway del adaptador" 8 60 2>$OUTPUT
response=$?
name=$(<$OUTPUT)
case $response in
        0) gateway=$name ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac
rm /tmp/input.txt
}
fun_dns1(){
OUTPUT="/tmp/input.txt"
dialog --title "Primer Dns" \
--backtitle "Configurador de Red" \
--inputbox "Indica el primer dns" 8 60 2>$OUTPUT
response=$?
name=$(<$OUTPUT)
case $response in
        0) dns1=$name ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac
rm /tmp/input.txt
}
fun_dns2(){
OUTPUT="/tmp/input.txt"
dialog --title "Segundo Dns" \
--backtitle "Configurador de Red" \
--inputbox "Indica el segundo dns" 8 60 2>$OUTPUT
response=$?
name=$(<$OUTPUT)
case $response in
        0) dns2=$name ;;
        1) echo "Cancel pressed." ;;
        255) echo "[ESC] key pressed." ;;
esac
rm /tmp/input.txt
}
fun_interfaces(){
interfaces=$(cat /etc/network/interfaces)
}
fun_añadir(){
echo "" >> /etc/network/interfaces
echo "auto $nomadap" >> /etc/network/interfaces
echo "iface $nomadap inet static"  >> /etc/network/interfaces
echo "address $ip" >> /etc/network/interfaces
echo "netmask $mask" >> /etc/network/interfaces
echo "gateway $gateway" >> /etc/network/interfaces
echo "dns-nameserver $dns1" >> /etc/network/interfaces
if [ "$dns2" = "" ] 
then
echo ""
else
echo "dns-nameserver $dns2" >> /etc/network/interfaces
fi
}

#--------------------------INICIO SCRIPT---------------------------------------
OUTPUT="/tmp/input.txt"
# Dibuja el InputBox
dialog --menu "Configuracion de red: nombreadaptador=$nomadap,ip=$ip,mask=$mask,gateway=$gateway,dns1=$dns1,dns2=$dns2,$interfaces" 0 0 0 NombreAdaptador "Indica el nombre del adaptador" Ip "Indica la ip que quieres poner" Mascara "Indica la mascara que quieres poner" Gateway "Indica el gateway" Dns1 "Indica el primer dns" Dns2 "Indica el segundo dns" Interfaces "Visualizar Interfaces actuales" AñadirConf "Añadir configuracion del nuevo adaptador al final del archivo" Salir "Salir del script" 2>temp

if [ "$?" = "0" ]
then
        _return=$(cat temp)
 
        # NombreAdaptador is selected
        if [ "$_return" = "NombreAdaptador" ]
        then
                fun_nombreadaptador
        fi
 
         # Ip is selected
        if [ "$_return" = "Ip" ]
        then
		fun_ip
        fi
 
         # Mascara is selected
        if [ "$_return" = "Mascara" ]
        then
		fun_mascara
        fi
         # Gateway is selected
        if [ "$_return" = "Gateway" ]
        then
                fun_gateway
        fi
	 # Dns1 is selected
        if [ "$_return" = "Dns1" ]
        then
                fun_dns1
        fi
         # Dns2 is selected
        if [ "$_return" = "Dns2" ]
        then
                fun_dns2    
        fi
         # VisualizarInterfaces is selected
        if [ "$_return" = "Interfaces" ]
        then
                fun_interfaces    
        fi
         # AñadirConfAdaptador is selected
        if [ "$_return" = "AñadirConf" ]
        then
                fun_añadir
        fi
        # Salir is selected
        if [ "$_return" = "Salir" ]
        then
                exit 0
        fi
 
# Cancel is pressed
else
        echo "Cancel is pressed"
fi

#borrar archivo temporal
rm /tmp/input.txt
done
