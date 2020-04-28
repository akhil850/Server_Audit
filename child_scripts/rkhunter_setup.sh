#!/usr/bin/env bash
#Linux Basic Security Setup v1.3
sudo yum install rkhunter -y 2>&1 >/dev/null
sudo rkhunter --update -y 2>&1 >/dev/null
sudo rkhunter --propupd 2>&1 >/dev/null
sudo rkhunter --check --sk 2>&1 >/dev/null
echo -e "\e[1;35mDone \e[0m"
