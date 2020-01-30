#!/usr/bin/env bash
DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")
echo "#######################################"
echo
echo "Linux Basic Security Audit"
echo "Time : \n$DATE \n$TIME"
echo
echo "#######################################"
echo
echo "Peforming Full System Update"
echo "------------------------------------"
sh ./scripts/update_system.sh
echo "System Fully Updated"
echo
echo "Disabling SELINUX"
echo "------------------------------------"
sh ./scripts/selinux_disable.sh
echo "Disabled"
echo
echo "CSF will be installed"
echo "------------------------------------"
sh ./scripts/csf_setup.sh
echo "CSF Installed"
echo
echo "Rkhunter Will be installed"
echo "------------------------------------"
sh ./scripts/rkhunter_setup.sh
echo "Rkhunter Installed"
