#!/usr/bin/bash

if [[ $1 == "-h" ]]
then
    echo 'Admite un argumento, una cadena de texto que se almacenará en los ficheros ./foo/dummy/file1.txt y ./foo/empty/file2.txt'
	exit 0

elif [[ $# == 1 ]]
then
	mkdir -p ./foo/{dummy,empty}/
	touch ./foo/dummy/file{1,2}.txt	
	if [[ $1 != "" ]]
	then
		echo "$1" > ./foo/dummy/file1.txt
	else
		echo 'Que me gusta la bash!!!!' > ./foo/dummy/file1.txt
	fi
	cat ./foo/dummy/file1.txt > ./foo/dummy/file2.txt
	mv ./foo/dummy/file2.txt ./foo/empty/

else
	echo 'Número de argumentos incorrecto, se necesita un argumento.'
	exit 1
fi