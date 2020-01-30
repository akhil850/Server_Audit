#!/usr/bin/env bash
echo "1. Peforming Full System Update"
echo "------------------------------------"
sh ./child_scripts/update_system.sh
echo "System Fully Updated"
echo ""
echo ""
echo "2. Disabling SELINUX"
echo "------------------------------------"
sh ./child_scripts/selinux_disable.sh
echo "Disabled"
echo ""
echo ""
echo "3. CSF will be installed"
echo "------------------------------------"
sh ./child_scripts/csf_setup.sh
echo "CSF Installed"
echo ""
echo ""
echo "3. Rkhunter Will be installed"
echo "------------------------------------"
sh ./child_scripts/rkhunter_setup.sh
echo "Rkhunter Installed"
echo ""
echo ""
echo "4. Changing SSH port"
echo "------------------------------------"
sh ./child_scripts/ssh_port_change.sh
echo "Rkhunter Installed"
echo ""
echo ""
echo "4. Adding Admin IPs"
echo "------------------------------------"
sh ./child_scripts/allow_ips.sh
echo "Added important IPs"
echo ""
echo ""
