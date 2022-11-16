#!/bin/sh

read -p "Introduzca un usuario: " user
gruposec=$(groups $user | cut -d " " -f 4-)
if id -u $user > /dev/null 2>&1; then
echo "El usuario $user pertenece a los siguientes grupos secundarios:"
echo $gruposec
else
    echo "El usuario $user no existe"
fi


