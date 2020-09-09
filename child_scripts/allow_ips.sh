#!/usr/bin/env bash
#Linux Basic Security Setup v1.3
for i in `curl https://www.cloudflare.com/ips-v4`; do echo $i >> /etc/csf/csf.ignore; done
for i in `curl https://www.cloudflare.com/ips-v4`; do csf -a $i; done
for i in `curl https://www.cloudflare.com/ips-v6`; do csf -a $i; done
echo -e "\e[1;35mDone \e[0m"
