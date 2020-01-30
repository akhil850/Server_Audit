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
echo "1. Peforming Full System Update"
echo "------------------------------------"
sh ./scripts/update_system.sh
echo "System Fully Updated"
echo ""
echo "2. Disabling SELINUX"
echo "------------------------------------"
sh ./scripts/selinux_disable.sh
echo "Disabled"
echo ""
echo "2. CSF will be installed"
echo "------------------------------------"
sh ./scripts/csf_setup.sh
echo "CSF Installed"
echo ""
echo "3. Rkhunter Will be installed"
echo "------------------------------------"
sh ./scripts/rkhunter_setup.sh
echo "Rkhunter Installed"
echo ""
echo "4. Changing SSH port"
echo "------------------------------------"
sh ./scripts/ssh_port_change.sh
echo "Rkhunter Installed"
echo ""
echo "4. Adding Admin IPs"
echo "------------------------------------"
sh ./scripts/allow_ips.sh
echo "Added important IPs"
echo ""
echo "#######################################"
echo "#######################################"
echo
echo "Linux Basic Security Audit"
echo "Starting Time : \n$DATE \n$TIME"
echo
echo "#######################################"
echo "#######################################"
