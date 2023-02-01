#! /bin/bash

read -p "Introduce fichero: " fichero

if [[ -e $fichero ]]
then
	echo "El elemento $fichero existe"
else
	echo "El elemento $fichero no existe"
	exit 1
fi
exit 0
