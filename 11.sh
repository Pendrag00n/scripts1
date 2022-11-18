#!/bin/sh
echo "Introduzca un nombre de usuario"
read user
if [ -z $user ]; then
    echo "No has introducido un nombre de usuario"
    exit 1
fi
if [ -z $(grep $user /etc/passwd) ]; then
    echo "El usuario no existe"
    exit 1
fi
ENTRY=$(cat /etc/passwd | grep ^$user)
echo "El usuario es" $ENTRY | cut -d: -f1
if [ ($ENTRY | cut -d: -f2) == "x"]; then
    echo "La contraseña está encriptada y se encuentra en /etc/shadow"
else
    echo "La contraseña es" $ENTRY | cut -d: -f2
fi 
echo "El UID es" $ENTRY | cut -d: -f3
echo "El GID es" $ENTRY | cut -d: -f4
echo "El nombre completo del usuario es" $ENTRY | cut -d: -f5
echo "El directorio home es" $ENTRY | cut -d: -f6
echo "El shell es" $ENTRY | cut -d: -f7

