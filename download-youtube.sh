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

command -v youtubedr > /dev/null 2>&1 || { sleep 0.5; echo>&2 -e "$verde[$blanco*$verde]$blanco Verificando youtubedr...";sleep 3;}


VERIFICAR_youtubedr=$(ps aux | grep -o "youtubedr" | head -n1)
if [[ $VERIFICAR_youtubedr == *'youtubedr'* ]]; then   
	pkill -f -2 youtubedr > /dev/null 2>&1  
	killall -2 youtubedr > /dev/null 2>&1
fi

command -v youtubedr > /dev/null 2>&1 || { sleep 0.5; echo >&2 -e "$verde[$blanco*$verde]$blanco Instalando youtubedr..."; pkg install youtubedr -y &>> /dev/null;sleep 3;}

sleep 2
echo -e "${cyan}
▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣
                 
╲╭━<━━╮╲╲        +++++++++++++++++++++++++++++++
╲┃╭╮╭╮┃╲╲        +                             +
┗┫┏━━┓┣┛╲        + Descarga Videos de Youtube  +
╲┃╰━━╯┃ ╲        +                             +
╲╰┳━━┳╯╲╲        +                             +
╲╲┛╲╲┗╲╲╲        + Descarga Videos de Youtube  +
	         +                             +
		 +++++++++++++++++++++++++++++++
❆  ❆   ❆   ❆   ❆
▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" 
sleep 2
echo -e ""$cyan
while :
do

cowsay Elige las opciones: 
echo -e -n ${cyan}"           ╚════ ≪ •❈• ≫ ════╝$magenta
▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣             $cyan❆$magenta
▣▣▣
▣▣▣    ▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣
▣▣▣    ▣▣$verde[${blanco}1$verde]$blanco 𝘿𝙚𝙨𝙘𝙖𝙧𝙜𝙖𝙧 𝙫𝙞𝙙𝙚𝙤𝙨 𝙙𝙚 𝙔𝙤𝙪𝙩𝙪𝙗𝙚$magenta ▣▣
▣▣▣    ▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣
▣▣▣     
▣▣▣    ▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣
▣▣▣    ▣▣$verde[${blanco}2$verde]$blanco 𝙎𝙖𝙡𝙞𝙧                     $magenta  ▣▣
▣▣▣    ▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣
▣▣▣
▣▣▣
▣▣▣▣▣▣▣▣${verde}❱❱❱$cyan "
read -r opcion
echo ""

[ "$opcion" == "1" ]||[ "$opcion" == "2" ] && break
echo -e "${rojo}[-]${blanco} Opcion Incorrecta..."
sleep 2
clear
done
case $opcion in
	1)

cowsay Amigo ingresa el enlace del video selecionado, bueno suerte
echo -e -n "           ╚════ ≪ •❈• ≫ ════╝$magenta
▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣    $cyan❆$magenta
▣▣▣
▣▣▣   ▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣
▣▣▣   ▣▣$verde[*]$blanco 𝙄𝙣𝙜𝙧𝙚𝙨𝙖 𝙚𝙡 𝙚𝙣𝙡𝙖𝙘𝙚$magenta ▣▣
▣▣▣   ▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣
▣▣▣
▣▣▣   
▣▣▣▣▣▣▣▣${verde}❱❱❱$cyan "
	read -r link
        echo ""
	echo -e "${verde}[+]${blanco} Descargando..."
	sleep 1.5
	youtubedr download "$link"
	echo -e "${verde}[*]${blanco} Descargado y guardado en la ruta actual :)"
	echo ""
	sleep 3
	;;
2)
	echo ""
	echo -e "${verde}[*]${cyan} Hasta pronto :)"
	echo ""
	sleep 2.5
esac
