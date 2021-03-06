#!/usr/bin/bash
if [[ $# == 1 && $1 == '-h' ]]
then
	echo 'Este script descarga el contenido de la url y busca en el la palabra indicada'
	echo 'Toma dos argumentos: url palabra'
	echo 'Ejemplo: ./Ejercicio_Opcional.sh https://www.ugr.es/ "granada" '
fi

if [[ $# != 2 ]]
then 
	echo 'Número de argumentos equivocado'
else 
	curl $1 > "$( echo $1 | cut -d '.' -f 2).txt"
	#grep -l $2 "$( echo $1 | cut -d '.' -f 2).txt"
	if [[ $(grep -ci $2 "$( echo $1 | cut -d '.' -f 2).txt") = 1 ]]
	then
		echo "La palabra $2 aparece 1 vez"
		echo "Aparece en la línea: $(grep -ni $2 "$( echo $1 | cut -d '.' -f 2).txt")"
	else
	if [[ $(grep -ic $2 "$( echo $1 | cut -d '.' -f 2).txt") > 1 ]]
	then 
		echo "La palabra $2 aparece  $(grep -ic $2 "$( echo $1 | cut -d '.' -f 2).txt") veces"
		echo "Aparece en las líneas: $(grep -in $2 "$( echo $1 | cut -d '.' -f 2).txt")"
	else 
	echo "La palabra no se ha encontrado en la página web $1"
	fi
	fi	
		
fi


