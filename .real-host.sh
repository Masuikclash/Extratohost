#!bin/bash
#Created: 13/11/2018
#Upgrade 12/01/2019
#by: real strategy
#Successful update
#MESSAGE: Never stop learning, if you are here is out of curiosity and try to learn shell or bash with the help of google search among others and so you will have more ease of course take time but you will learn even if editing
clear 
while :
do
#menu banner
clear
echo -e "\e[1;33m(98/8)\e[1;32m" 
echo "    __  __           __     ______     __                  __             "
echo "   / / / /___  _____/ /_   / ____/  __/ /__________  _____/ /_____  _____ "
echo "  / /_/ / __ \/ ___/ __/  / __/ | |/_/ __/ ___/ __ \/ ___/ __/ __ \/ ___/ "
echo " / __  / /_/ (__  ) /_   / /____>  </ /_/ /  / /_/ / /__/ /_/ /_/ / /     "
echo "/_/ /_/\____/____/\__/  /_____/_/|_|\__/_/   \__,_/\___/\__/\____/_/      "
echo -e "\e[1;33mV= 2.0                    (99) Spanish                    (98) English     " 
echo "" 
echo -e "\e[1;31m[1]\e[1;32m HOST & SSL EXTRATOR"
echo -e "\e[1;31m[2]\e[1;32m ONLINE WEB STATUS"
echo -e "\e[1;31m[3]\e[1;32m SALVA HOST EXTRAIDAS"
echo -e "\e[1;31m[4]\e[1;32m CRIA PAYLOAD FUNCIONAL"
echo -e "\e[1;31m[5]\e[1;32m VER PORTAS DA HOST"
echo -e "\e[1;31m[6]\e[1;32m VER CABEÇARIO DA HOST & WEB"
echo -e "\e[1;31m[8]\e[1;32m VER PROXY DA HOST"
echo -e "\e[1;31m[0]\e[1;32m EXIT MENU H.E"
echo ""
echo -e "\e[1;36m"
echo -n "Choose option: "
read opcion
#lista de menu
echo -e "\e[0m"
case $opcion in
1)echo ""
echo -n "HOST: ";
read HOST;
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;3Precione Enter Pra Continua Com Script...!\e[0m";
read foo
;;
2)echo ""
echo "Mostrando Status da host...";
echo ""
bash .status.sh
echo ""
echo -e "\e[1;3Precione Enter Pra Continua Com script...\e[0m"
read foo
;;
3)echo ""
echo -e "\e[1;33mPaste the host to show the status\e[0m";
echo -e "\e[1;31mRemember CTRL + C to go out\e[0m";
echo -e "\e[1;36mHOST: \e[0m";
cat>lista-host.txt
;;
4)clear
bash .payloads.ingles
read foo;
;;
5)echo ""
echo -ne "\e[1;31m DOMINIO(IP/WEB): ";
read MAIN
echo -ne "\e[1;31m PORTAA(53,80):  ";
read RTS
sleep 2
echo -e "\e[1;32m";
nmap -p $RTS $MAIN
read foo
;;
6)echo -ne "\e[1;31mSITE WEB/IP: ";
read WEB
echo ""
echo -e "\e[1;32m"
curl https://api.hackertarget.com/httpheaders/?q=$WEB
read foo
;;
8)echo -ne "\e[1;31mSITE WEB/IP: ";
read WEB1
echo ""
echo -e "\e[1;32m"
curl https://api.hackertarget.com/geoip/?q=$WEB1
read foo
;;
98)clear
echo "translating to english language...";
sleep 3
bash real-host-v2.sh
;;
99)clear
echo "Translating to spanish language...";
sleep  3
bash .real-host.sh
;;
#Fin del menu/in the end
0)clear
exit 0;;
#error
*)clear
echo "Invalid command...";
sleep 1.5
;;
esac
done


