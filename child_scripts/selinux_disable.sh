#!/usr/bin/env bash
#Linux Basic Security Setup v1.3
setenforce 0  2>&1 >/dev/null
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
sudo sestatus
echo -e "\e[1;35mDone \e[0m"
