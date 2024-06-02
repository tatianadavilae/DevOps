#!/usr/bin/bash
if [[ $# == 1 && $1 == '-h' ]]
then
	echo 'Este script descarga el contenido de la url y busca en el la palabra indicada'
	echo 'Toma dos argumentos: url palabra'
	echo 'Ejemplo: ./Ejercicio_Opcional.sh https://www.ugr.es/ granada '
	exit 0
fi

if [[ $# != 2 ]]
then 
	echo 'Se necesitan únicamente dos parámetros para ejecutar este script'
else
	url=$1
	word=$2
	#Descargo el contenido de la página web
	curl --silent $url > file.txt
	occurrence=$(grep -i $word file.txt -o| wc -w )

	if [[ $(grep -ci word file.txt) = 1 ]]
	then
		echo "La palabra $word aparece 1 vez"
		echo "Aparece únicamente en la línea: $(grep -ni $word file.txt)"
	else
		if [[ $(grep -ic $word file.txt) > 1 ]]
		then 
			echo "La palabra $word aparece  $occurrence veces"
			echo "Aparece por primera vez en la línea $(grep -in $word file.txt | head -n 1 | grep [0-9]*\: -o |grep [0-9]* -o )"
			
		else 
		echo "La palabra no se ha encontrado en la página web $url"
	fi
	fi			
fi