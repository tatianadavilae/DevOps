# Modulo 1 Linux

## Primer ejericio

Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios.

```bash
mkdir -p ./foo/{dummy,empty}/
touch ./foo/dummy/file{1,2}.txt	
echo 'Me encanta la bash!!!!' > ./foo/dummy/file1.txt
```

## Segundo ejercicio

Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt y mueve file2.txt a la carpeta empty.

```bash
cat ./foo/dummy/file1.txt > ./foo/dummy/file2.txt
mv ./foo/dummy/file2.txt ./foo/empty/ 
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

Opcional - Crea un script de bash que descargue el contenido de una página web a un fichero.
`
Pasos a seguir para ejecutar:
- Descargar el fichero Ejercicio_Opcional.sh
- Convertir el fichero en un ejecutable siguiendo la primera linea de código
- Ejecutar el fichero con la segunda linea de código, pasar como primer parámetro la url y como segundo parámetro la palabra que se busca.
- El fichero se nombrará automáticamente como la primera cadena de texto que aparece después del '.', si la url es 'www.ugr.es' el contenido se descargará en el fichero 'ugr.txt'. 

``` bash
chmod +x ./Ejercicio_Opcional.sh
./Ejercicio_Opcional.sh
```
- Para conocer el funcionamiento del script

```
./Ejercicio_Opcional.sh -h
```
