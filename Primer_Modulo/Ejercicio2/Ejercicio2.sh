#!/usr/bin/bash

mkdir foo
cd foo
mkdir dummy
mkdir empty
cd dummy
touch file{1,2}.txt
if [ "$1" > 0 ] ; then echo "$1" > file1.txt
else echo 'Que me gusta la bash!!!!' > file1.txt
fi
cp file1.txt file2.txt
mv file2.txt ../empty/
