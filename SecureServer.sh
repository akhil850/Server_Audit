#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")
red=$'\e[1;31m'
grn=$'\e[1;32m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
white=$'\e[0m'
echo $'\e[43m'#######################################$white
echo ""
echo -e "\e[1;36mLinux Basic Security Setup v1.2 \e[0m"
echo "Starting Time : $DATE $TIME"
echo ""
echo $'\e[43m'#######################################$white
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
echo -e "\e[1;36m#######################################\e[0m"
echo ""
echo -e "\e[1;36mLinux Basic Security Setup v1.3 \e[0m"
echo ""
echo -e "\e[1;32m ** Completed ** \e[0m"
echo ""
echo "Completed Time : $DATE $TIME"
echo ""
echo -e "\e[1;36m#######################################\e[0m"
echo ""
echo ""
