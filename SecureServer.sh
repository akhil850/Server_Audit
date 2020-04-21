#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")
echo "#######################################"
echo ""
echo "Linux Basic Security Setup v1.2"
echo "Starting Time : $DATE $TIME"
echo ""
echo "#######################################"
echo ""
cd /usr/src/
rm -rf Server_Audit
git clone -q https://github.com/akhil850/Server_Audit.git  2>&1 >/dev/null
chmod +x /usr/src/Server_Audit/ -R
sh /usr/src/Server_Audit/child_scripts/update_system.sh
#Main Script starts
cd /usr/src/Server_Audit/
sh main.sh
echo "Cleaning Up...Please Wait"
rm -rf /usr/src/Server_Audit/
clear
echo "#######################################"
echo "#######################################"
echo
echo "!!!!! Completed !!!!!"
echo ""
echo "Linux Basic Security Setup v1.2"
echo "Completed Time : $DATE $TIME"
echo ""
echo "#######################################"
echo "#######################################"
