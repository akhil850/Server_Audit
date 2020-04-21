#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
echo "\n"
echo ""
echo "Running Full System Update"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/update_system.sh
echo ""
echo ""
echo "2. Disabling SELINUX"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/selinux_disable.sh
echo ""
echo ""
echo "3. CSF will be installed"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/csf_setup.sh
echo ""
echo ""
echo "4. Rkhunter will be installed"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/rkhunter_setup.sh
echo ""
echo ""
echo "5. SSH Port will be changed to 33122"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/ssh_port_change.sh
echo ""
echo ""
echo "6. Adding Admin IPs"
echo "------------------------------------"
sh /usr/src/Server_Audit/child_scripts/allow_ips.sh
echo ""
echo ""
