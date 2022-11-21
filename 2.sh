!/bin/sh
echo -e "\e[1;31m NO EJECUTAR ESTE SCRIPT EN WSL \e[0m"
echo ""
if [ "$EUID" -ne 0 ]; then
  echo ""
  echo -e "\e[1;31m !EJECUTA ESTE SCRIPT COMO SUPERUSUARIO! \e[0m"
  echo ""
exit
fi
echo "Introduzca una carpeta (O más, separadas por espacios) para crear una copia de seguridad"
echo "Si no existe la carpeta de backups, se creará"
read dir
user=$(logname)
dirname=$(date +%d%m%Y%H%M%S)
if [ ! "/home/$user/backup/" ]; then
    echo "Creando directorio de backups..."
    mkdir -p /home/$user/backup/
fi
    echo "La carpeta de backups existe!"
    echo "Comprimiendo..."
    tar -cpzf /home/$user/backup/backup_$dirname.tar.gz $dir &> /dev/null
    if [ $? -eq 0 ]; then
        echo "Tu copia de seguridad se ha creado en ~/backup"
    else
        echo "La carpeta que has introducido no existe o el script no puede leer la carpeta :("
        if [ -f /home/$user/backup/backup_$dirname.tar.gz ]; then
            rm -rf /home/$user/backup/backup_$dirname.tar.gz
        fi
    fi
