#!/bin/sh
# Replace spaces in filenames with backslashes
echo "Introduzca un directorio con blancos"
read path
if [ -d $path ]
then
    cd $path
    for file in * 
    do
            mv "$file" `echo $file | tr ' ' '_'`   
    done
else
    echo "No existe el directorio"
fi