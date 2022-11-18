#!/bin/sh
echo "Introduzca una carpeta (O más, separadas por espacios) para crear una copia de seguridad"
echo "Si no existe la carpeta de backups, se creará"
read dir
dirname=$(date +%d%m%Y%H%M%S)
if [ ! -d "~/backup/" ]; then
    echo "Creando directorio de backups..."
    mkdir -p ~/backup/
fi
if [ -d $dir ]; then
    echo "La carpeta existe!"
    echo "Comprimiendo..."
    tar -czvf ~/backup/backup_$dirname.tar.gz $dir
    echo "Tu copia de seguridad se ha creado en ~/backup"
else
    echo "La carpeta que has introducido no existe :("
fi