#! /bin/bash

numero_aleatorio=$(( $RANDOM % 10 + 1 ))
echo "El numero aleatorio es: $numero_aleatorio"

if [[ -z $1 ]]
then
	read -p "Introduzca un numero entre 1 y 10: " numero
else 
	numero=$1
fi

echo "Case con numero introducido por parametro: "
case $numero in
	0 | 2 | 4 | 6 | 8 | 10)
		echo "Es par"
	;;
	*)
		echo "Es impar"
	;;
esac

echo "Case con numero aleatorio: "
case $numero_aleatorio in
	0 | 2 | 4 | 6 | 8 | 10)
		echo "Es par"
	;;
	*)
		echo "Es impar"
	;;
esac
