# Modulo 1 Linux

## Primer ejericio

Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios.

```bash
mkdir foo
cd foo/
mkdir dummy/
mkdir empty/
cd dummy/
touch file{1,2}.txt
echo 'Me encanta la bash!!!!' > file1.txt
```

## Segundo ejercicio

Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt y mueve file2.txt a la carpeta empty.

```bash
cp file1.txt file2.txt
mv file2.txt ../empty  
```

## Tercer ejercicio

Crear un script de bash que agrupe los pasos de los ejercicios anteriores y además permita establecer el texto de file1.txt alimentándose como parámetro al invocarlo

Pasos a seguir para ejecutar:
- Descargar el fichero Ejercicio3.sh
- Convertir el fichero en un ejecutable siguiendo la primera linea de código
- Ejecutar el fichero con la segunda linea de código

```bash
chmod +x ./Ejercicio3.sh
./Ejercicio3.sh 
```
- Para conocer el funcionamiento del script

```
./Ejercicio3.sh -h
```

## Cuarto ejercicio


