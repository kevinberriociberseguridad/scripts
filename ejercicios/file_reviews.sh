#! /bin/bash

#*******************FUNCIONES************************
function errorMenu() {
	echo "El numero introducido no es ninguna opcion del menu."
}

function imprimirMenu() {
	echo "1) Buscar ficheros por antigüedad (-t 'parametro')"
	echo "2) Buscar ficheros por permisos (-p 'parametro')"
	echo "3) Buscar ficheros por antigüedad y con permisos 777 (-t 'parametro' y -p 'parametro')"
	echo "0) Salir."
	echo "Introduce una opcion del menu [0-4]: "
}

#********************PROGRAMA*************************

declare -i salir=-1

while [ $salir -ne 0 ];
do

#
imprimirMenu
read salir

if [[ $salir -ne 0 ]]
then
num=$salir
echo $num
while [ $num -gt 3 ] || [ $num -lt 0 ];
  do
    errorMenu
    echo "Introduce una opcion del menu [0-4]: "
    read num;
  done
else
	echo "Ha salido del programa exitosamente."
	exit 1
fi

#*****************CASE**********************
 case $num in
    1)
        echo "Introduce el numero de dias de antigüedad: "
        read dias
        find /home/ -atime $dias >> old_files.txt
        ;;
    2)	
    	echo "Introduce los permisos de 0-7: "
    	read permisos
    	if [[ $permisos =~ ^[0-7]{3,3}$ ]]
    	then
        	find /home/ -perm $permisos >> weak_files.txt
        else 
        	echo "Los permisos introducidos son incorrectos."
        fi
        ;;
    3)
        echo "Introduce el numero de dias de antigüedad: "
        read dias
        find /home/ -atime $dias -perm 777 >> review_files.txt
        ;;
    0)
    	echo "Ha salido del programa exitosamente."
        salir=$(salir=0)
        ;;
esac;


done
exit 0
