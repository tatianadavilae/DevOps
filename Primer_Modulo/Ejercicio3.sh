#!/usr/bin/bash

if [[ $1 == -h ]]
then
       	echo 'Admite un argumento, una cadena de texto que no puede contener número ni signos de puntuación se alacenará en los ficheros ./foo/dummy/file1.txt y ./foo/empty/file2.txt'
        exit 0
fi

if [[ $(grep -c [[:alpha:]]  <<<  $1) != 0  ]]
then
	if [[ $# > 1 ]] 
	then
		echo 'Demasiados argumentos, solo se admite un argumento.'
	else 
		mkdir foo
		cd foo
		mkdir dummy
		mkdir empty
		cd dummy
		touch file{1,2}.txt
		if [[ $1 > 0 ]] 
       		then echo "$1" > file1.txt
		else
	       	echo 'Que me gusta la bash!!!!' > file1.txt
		fi
		cp file1.txt file2.txt
		mv file2.txt ../empty/
	fi
else 
	echo 'Tipo de argumento no valido'
fi
