#!/usr/bin/bash
if [[ $# == 1 && $1 == '-h' ]]
then
	echo 'Este script descarga el contenido de la web "https://www.ugr.es/" y busca en el la palabra indicada'
	echo 'Toma un argumento: palabra'
	echo 'Ejemplo: ./Ejercicio_Opcional.sh granada '
	exit 0
fi

if [[ $# != 1 ]]
then 
	echo 'Número de argumentos equivocado'
else
	url="https://www.ugr.es/"
	word=$1
	#Descargo el contenido de la página web
	curl --silent $url >> file.txt
	
	if [[ $(grep -ci word file.txt) = 1 ]]
	then
		echo "La palabra $word aparece 1 vez"
		echo "Aparece en la línea: $(grep -ni $word file.txt)"
	else
		if [[ $(grep -ic $word file.txt) > 1 ]]
		then 
			echo "La palabra $word aparece  $(grep -ic $word file.txt) veces"
			echo "Aparece por primera vez en la línea $(grep -in $word file.txt | head -n 1 | grep [0-9]* -o)"
			
		else 
		echo "La palabra no se ha encontrado en la página web $url"
	fi
	fi			
fi