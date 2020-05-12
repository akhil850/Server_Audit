#!/usr/bin/env bash
#Linux Basic Security Setup v1.3
DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")
white=$'\e[0m'
echo ""
echo ""
echo $'\e[1;41m'#######################################$'\e[0m'
echo ""
echo -e "\e[1;36mLinux Basic Security Setup v1.3 \e[0m"
echo ""
echo "Starting Time : $DATE $TIME"
echo ""
echo $'\e[1;41m'#######################################$'\e[0m'
echo ""
cd /usr/src/
rm -rf Server_Audit
apt-get install curl git -y 2>&1 >/dev/null
git clone -q https://github.com/akhil850/Server_Audit.git  2>&1 >/dev/null
chmod +x /usr/src/Server_Audit/ -R
#Main Script starts
cd /usr/src/Server_Audit/
#!/usr/bin/env bash
#Linux Basic Security Setup v1.3
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
##Main Script Ends
echo -e "\e[1;36mCleaning Up...Please Wait \e[0m"
rm -rf /usr/src/Server_Audit/
clear
echo ""
echo ""
echo $white
echo $'\e[1;41m'#######################################$'\e[0m'
echo ""
echo -e "\e[1;36mLinux Basic Security Setup v1.3 \e[0m"
echo ""
echo -e "\e[1;32m ** Completed ** \e[0m"
echo ""
echo "Completed Time : $DATE $TIME"
echo ""
echo -e "\033[37;5;7m Proceed to Reboot \033[0m"
echo ""
echo $'\e[1;41m'#######################################$'\e[0m'
echo ""
echo ""
