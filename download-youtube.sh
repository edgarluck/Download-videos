#!/bin/bash

# COLORES

verde='\033[32m'
amarillo='\033[33m'
magenta='\033[1;35m'
rojo='\033[31m'
blanco='\033[37m'
cyan='\033[1;36m'


clear

SYSTEM=$(uname -o)

if [ "${SYSTEM}" == "Android" ]; then
	BIN="/data/data/com.termux/files/usr/bin"
	APT="pkg"
else
	BIN="/bin"
	APT="apt-get"
fi

	
VERIFICAR_youtubedr=$(ps aux | grep -o "youtubedr" | head -n1)
if [[ $VERIFICAR_youtubedr == *'youtubedr'* ]]; then   
	pkill -f -2 youtubedr > /dev/null 2>&1  
	killall -2 youtubedr > /dev/null 2>&1
fi

echo ""
command -v youtubedr > /dev/null 2>&1 || { sleep 0.5; echo >&2 -e "$verde[$blanco*$verde]$blanco Verificando youtubedr...";sleep 3;}

command -v youtubedr > /dev/null 2>&1 || { sleep 0.5; echo >&2 -e "$verde[$blanco*$verde]$blanco Instalando youtubedr..."; pkg install youtubedr -y &>> /dev/null;sleep 3;}


echo -e ${cyan}
echo "   ____  "
sleep 0.4
echo "  |  _ \  ___  ___  ___ __ _ _ __ __ _  __ _  "
sleep 0.4
echo "  | | | |/ _ \/ __|/ __/ _  | '__/ _ •|/ _• | "
sleep 0.4
echo "  | |_| |  __/\__ \ (_| (_| | | | (_| | (_| | "
sleep 0.4
echo "  |____/ \___||___/\___\__,_|_|  \__, |\__,_| "
sleep 0.4
echo "                                 |___/"
sleep 0.4

echo "               _     _"
sleep 0.4
echo "        __   _(_) __| | ___  ___  ___"
sleep 0.4
echo "        \ \ / / |/ _° |/ _ \/ _ \/ __|"
sleep 0.4
echo "         \ V /| | (_| |  __/ (_) \__ }"
sleep 0.4
echo "          \_/ |_|\__,_|\___|\___/|___/"
sleep 0.4
echo ""
echo -e ${magenta}"               +++++++++++++"${cyan}
echo -e "               De Youtube :)"
echo -e ${magenta}"               +++++++++++++"
sleep 2
echo ""
echo ""
while :
do
echo -e ${magenta}" +++++++++++++++++++"${cyan}
echo -e " Elige las opciones:"
echo -e ${magenta}" +++++++++++++++++++"
echo ""
echo -e "${verde}      [1]${blanco} Descargar videos de youtube."
echo ""
echo -e "${rojo}      [2] Salir."
echo ""
echo -e -n "${cyan}>>>${verde} "

read -r opcion
echo ""

[ "$opcion" == "1" ]||[ "$opcion" == "2" ] && break
echo -e "${rojo}[-]${blanco} Opcion Incorrecta..."
sleep 2
clear
done
if [ "${opcion}" == "1" ]; then
	echo -e -n ${cyan}"Ingrese el link:${verde} "
	read -r link
        echo ""
	echo -e "${verde}[+]${blanco} Descargando..."
	sleep 1.5
	youtubedr download "$link"
	echo -e "${verde}[*]${blanco} Descargado y guardado en la ruta actual :)"
	sleep 3
else
	[ "${opcion}" == "2" ]
	echo -e "${verde}[*]${cyan} Hasta pronto :)"
	echo ""
	sleep 2.5
	exit
fi
