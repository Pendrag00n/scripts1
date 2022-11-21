#!/bin/sh
if [ "$EUID" -ne 0 ]; then
  echo ""
  echo -e "\e[1;31m !EJECUTA ESTE SCRIPT COMO SUPERUSUARIO! \e[0m"
  echo ""
exit
fi
echo "Creación manual de un usuario"
echo "Introduzca el username: "
read username
if [ -d /home/$username ]; then
echo "La carpeta del usuario ya existe, borrala primero"
else
echo "Introduzca la contraseña: "
read pass
largestuid=$(awk -F: '{print $3}' /etc/passwd | sort -n | tail -1)
nuid=$(echo $largestuid + 1 | bc)
hashed=$(openssl passwd -6 -salt xyz $pass)
echo "$username:x:$nuid:$nuid::/home/$username:/bin/bash" >> /etc/passwd
echo "$username:$hashed:::::::" >> /etc/shadow
echo "$username:x:$nuid:" >> /etc/group
mkdir /home/$username
chown $username:$username /home/$username
cp -r /etc/skel/. /home/$username
echo "Usuario creado correctamente"
fi
