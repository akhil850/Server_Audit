#!/usr/bin/env bash
DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")
echo "#######################################"
echo ""
echo "Linux Basic Security Audit"
echo "Starting Time : \n$DATE \n$TIME"
echo ""
echo "#######################################"
echo ""
clear
echo "Installing Required Modules...."
sudo yum install epel-release curl git -y 2>&1 >/dev/null
echo "Done"
echo "Setting Up Working Directories [/usr/src/] "
cd /usr/src/
git clone https://github.com/akhil850/Server_Audit.git  2>&1 >/dev/null
cd Server_Audit/
while true; do
    read -p "Do you wish to install this program?" yn
    case $yn in
        [Yy]* ) sh main.sh; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "Cleaning Up Working Directories [/usr/src/] "
rm -rf /usr/src/Server_Audit/
echo "#######################################"
echo "#######################################"
echo
echo "!!!!! Completed !!!!!"
echo "Linux Basic Security Setups"
echo "Completed Time : \n$DATE \n$TIME"
echo
echo "#######################################"
echo "#######################################"
