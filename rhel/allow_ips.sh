#!/usr/bin/env bash
#Linux Basic Security Setup v1.4
#Cloudflare_IPs
for i in `curl https://www.cloudflare.com/ips-v4`; do echo $i >> /etc/csf/csf.ignore; done
for i in `curl https://www.cloudflare.com/ips-v6`; do echo $i >> /etc/csf/csf.ignore; done
for i in `curl https://www.cloudflare.com/ips-v4`; do csf -a $i; done
for i in `curl https://www.cloudflare.com/ips-v6`; do csf -a $i; done
#adminips
for i in `curl https://github.com/akhil850/Server_Audit/resources/adminips`; do csf -a $i; done
echo -e "\e[1;35mDone \e[0m"
