#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
setenforce 0
sudo sed -i 's/enforcing/disabled/g' /etc/selinux/config
sudo sestatus
echo -e "\e[1;35mDone \e[0m"
