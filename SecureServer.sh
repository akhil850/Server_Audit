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
echo "Installing Required Modules...."
sudo yum install epel-release curl git wget -y 2>&1 >/dev/null
echo "Done"
echo "Setting Up Working Directories"
rm -rf /usr/src/Server_Audit
cd /usr/src/
git clone https://github.com/akhil850/Server_Audit.git  2>&1 >/dev/null
cd Server_Audit/
#Main Script startes
sh main.sh
echo "Cleaning Up Working Directories..Please Wait"
rm -rf /usr/src/Server_Audit/
echo "Cleaning Complete"
clear
echo "#######################################"
echo "#######################################"
echo
echo "!!!!! Completed !!!!!"
echo "Linux Basic Security Setup v1.2"
echo "Completed Time : $DATE $TIME"
echo
echo "#######################################"
echo "#######################################"
