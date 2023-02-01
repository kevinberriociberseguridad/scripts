#! /bin/bash 

for i in {1..254}
do 
	ping -c 1 192.168.8.$i > /dev/null
	if [[ $? -eq 0 ]] 
	then
		echo "El resultado de la ip 192.168.8.$i es OK!" 
	else
		echo "El resultado de la ip 192.168.8.$i es ERROR NEFASTO TOTAL, BORRADO DE SISTEMAX INMINENTE EN 3,2,1..!"
	fi
done

exit 0
