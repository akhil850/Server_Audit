#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
# yum install wget -y
# yum install perl-libwww-perl.noarch perl-LWP-Protocol-https.noarch perl-GDGraph -y 2>&1 >/dev/null
# cd /usr/src
# rm -rf csf.tgz
# wget https://download.configserver.com/csf.tgz
# tar -xzf csf.tgz
# cd csf
# sh install.sh
# sh /usr/local/csf/bin/remove_apf_bfd.sh
# systemctl stop firewalld 2>&1 >/dev/null
# systemctl disable firewalld 2>&1 >/dev/null
# echo "Testing CSF Compatibility"
# perl /usr/local/csf/bin/csftest.pl 2>&1 >/dev/null
# echo "Done"
# echo "Enabling CSF and LFD"
# sed -i 's/TESTING = "1"/TESTING = "0"/g' /etc/csf/csf.conf
# systemctl start csf 2>&1 >/dev/null
# systemctl start lfd 2>&1 >/dev/null
# systemctl enable csf 2>&1 >/dev/null
# systemctl enable lfd 2>&1 >/dev/null
# echo "Enabling CSF..."
# /usr/sbin/csf -e 2>&1 >/dev/null
# echo "Flushing CSF..."
# /usr/sbin/csf -f 2>&1 >/dev/null
# echo "Reloading CSF..."
# /usr/sbin/csf -r 2>&1 >/dev/null
echo "done"
