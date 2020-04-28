#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
echo ""
echo ""
echo -e "\e[1;33m1. Full System Update\e[0m"
echo ""
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/update_system.sh
echo ""
echo ""
echo -e "\e[1;33m2. Disabling SELINUX\e[0m"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/selinux_disable.sh
echo ""
echo ""
echo -e "\e[1;33m3. SSH Port change to$red 33122\e[0m"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/ssh_port_change.sh
echo ""
echo ""
echo -e "\e[1;33m4. Rkhunter Installation\e[0m"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/rkhunter_setup.sh
echo ""
echo ""
echo -e "\e[1;33m5. CSF Installation\e[0m"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/csf_setup.sh
echo ""
echo ""
echo -e "\e[1;33m6. Adding Admin and Cloudflare IPs\e[0m"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/allow_ips.sh
echo ""
echo ""
