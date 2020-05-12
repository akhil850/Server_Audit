#!/usr/bin/env bash
#Linux Basic Security Setup v1.4
setenforce 0  2>&1 >/dev/null
sudo sed -i 's/enforcing/disabled/g' /etc/selinux/config
sudo sestatus
echo -e "\e[1;35mDone \e[0m"
