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
echo "Installing Required Modules...."
sudo yum install epel-release curl git -y 2>&1 >/dev/null
echo "Done"
echo "Setting Up Working Directories [/usr/src/] "
cd /usr/src/
git clone https://github.com/akhil850/Server_Audit.git  2>&1 >/dev/null
cd Server_Audit/
echo "User confirmaton Required"
#Logic to take user input from shell

while true
do
 read -r -p "Are You Sure? [Y/n] " input

 case $input in
     [yY][eE][sS]|[yY])
 echo "Yes"
 ;;
     [nN][oO]|[nN])
 echo "No"
        ;;
     *)
 echo "Invalid input..."
 ;;
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
