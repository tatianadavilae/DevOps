#!/usr/bin/bash

mkdir foo
cd foo
mkdir dummy
mkdir empty
cd dummy
touch file{1,2}.txt
echo "$1" > file1.txt
cp file1.txt file2.txt
mv file2.txt ../empty/
