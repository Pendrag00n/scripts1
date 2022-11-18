#!/bin/sh
uuu=$USER
tty=$(tty)
echo "Hola usuario $uuu, está usted conectado a la terminal $tty"
echo "Son las $(date +%H) horas, $(date +%M) minutos del dia $(date +%d) del $(date +%m) de $(date +%Y)"
echo "Los usuarios conectados son los siguientes:"
who
echo "Tus procesos son los siguientes:" 
ps -u $uuu