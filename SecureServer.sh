#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")
echo $'\e[1;41m'#######################################$'\e[0m'
echo ""
echo -e "\e[1;36mLinux Basic Security Setup v1.2 \e[0m"
echo ""
echo "Starting Time : $DATE $TIME"
echo ""
echo $'\e[1;41m'#######################################$'\e[0m'
echo ""
cd /usr/src/
rm -rf Server_Audit
git clone -q https://github.com/akhil850/Server_Audit.git  2>&1 >/dev/null
chmod +x /usr/src/Server_Audit/ -R
#Main Script starts
cd /usr/src/Server_Audit/
sh main.sh
echo -e "\e[1;36mCleaning Up...Please Wait \e[0m"
rm -rf /usr/src/Server_Audit/
clear
echo ""
echo ""
echo $'\e[1;41m'#######################################$'\e[0m'
echo ""
echo -e "\e[1;36mLinux Basic Security Setup v1.3 \e[0m"
echo ""
echo -e "\e[1;32m ** Completed ** \e[0m"
echo ""
echo "Completed Time : $DATE $TIME"
echo ""
echo $'\e[1;41m'#######################################$'\e[0m'
echo ""
echo ""
