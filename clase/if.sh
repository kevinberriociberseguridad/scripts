#! /bin/bash

function error_no_es_fichero() {
	echo "El elemento $1 NO es un fichero."
}

function error_fichero_vacio() {
	echo "El elemento $1 esta vacio."
}

if [[ $# != 0 ]]
then
	fichero=$1
else 
	read -p "Introduce un fichero: " fichero
fi
if [[ -f $fichero && -s $fichero ]]
then
	echo "El elemento $fichero es un fichero y tiene contenido."
elif [[ ! -f $fichero ]]
then
	error_no_es_fichero $fichero
	exit 1
else 
	error_fichero_vacio $fichero
	exit 1
fi

exit 0
