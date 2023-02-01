#! /bin/bash

read -p "Introduce tu nombre: " nombre
if [[ -z $nombre ]];
# -z es para comprobar si está vacio
 then
 echo "ERROR! Debe introducir un nombre."
 exit 1
fi
read -p "Introduce tu edad: " edad
if [[ -z $edad ]];
# -z es para comprobar si está vacio
 then
 echo "ERROR! Debe introducir una edad."
 exit 1
fi
echo "Mi nombre es $nombre, tengo $edad años y utilizo $SHELL como shell."

exit 0
