#!/usr/bin/env bash
#Linux Basic Security Setup v1.4
# On APT based systems:
apt-get install libwww-perl liblwp-protocol-https-perl libgd-graph-perl
cd /usr/src
rm -rf csf.tgz 2>&1 >/dev/null
wget https://download.configserver.com/csf.tgz 2>&1 -q
tar -xzf csf.tgz 2>&1 >/dev/null
sh /usr/local/csf/bin/remove_apf_bfd.sh 2>&1 >/dev/null
cd csf
sh install.sh 2>&1 >/dev/null
# systemctl stop firewalld 2>&1 >/dev/null
# systemctl disable firewalld 2>&1 >/dev/null
# echo "Testing CSF Compatibility"
# perl /usr/local/csf/bin/csftest.pl 2>&1 >/dev/null
# echo "Done"
# echo "Enabling CSF and LFD"
sed -i 's/TESTING = "1"/TESTING = "0"/g' /etc/csf/csf.conf
# systemctl start csf 2>&1 >/dev/null
# systemctl start lfd 2>&1 >/dev/null
# systemctl enable csf 2>&1 >/dev/null
# systemctl enable lfd 2>&1 >/dev/null
csf -e 2>&1 >/dev/null
csf -f 2>&1 >/dev/null
csf -r 2>&1 >/dev/null
echo -e "\e[1;35mDone \e[0m"
