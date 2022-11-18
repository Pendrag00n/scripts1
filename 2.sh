#!/bin/sh
if [ "$EUID" -ne 0 ]; then
  echo ""
  echo -e "\e[1;31m !EJECUTA ESTE SCRIPT COMO SUPERUSUARIO! \e[0m"
  echo ""
exit
fi
echo "Introduzca una carpeta (O más, separadas por espacios) para crear una copia de seguridad"
echo "Si no existe la carpeta de backups, se creará"
read dir
dirname=$(date +%d%m%Y%H%M%S)
if [ ! "~/backup/" ]; then
    echo "Creando directorio de backups..."
    mkdir -p ~/backup/
fi
    echo "La carpeta existe!"
    echo "Comprimiendo..."
    tar -cvzf ~/backup/backup_$dirname.tar.gz $dir &> /dev/null
    if [ $? -eq 0 ]; then
        echo "Tu copia de seguridad se ha creado en ~/backup"
    else
        echo "La carpeta que has introducido no existe :("
        if [ -f ~/backup/backup_$dirname.tar.gz ]; then
            rm -rf ~/backup/backup_$dirname.tar.gz
        fi
    fi
    