#!/bin/sh
# Count number of directories in a directory
dir=$(pwd)
echo "Introduce el directorio: "
read dir
nd=$(ls -la $dir | grep "^d" | grep -c ^) #MENOS DOS PORQUE CUENTA LOS PUNTOS
na=$(ls -la $dir | grep "^-" | grep -c ^)
echo "Numero de directorios: $nd"
echo "Numero de archivos: $na"
