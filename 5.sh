#!/bin/sh
read -p "Introduzca un usuario: " username
uptime=$(uptime -p | cut -d " " -f 2-)
echo "$username lleva conectado $uptime, al igual que el resto de usuarios..."
