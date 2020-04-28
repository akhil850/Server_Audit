#!/usr/bin/env bash
#Linux Basic Security Setup v1.3
sudo yum install epel-release curl git wget -y 2>&1 >/dev/null
sudo yum update -y 2>&1 >/dev/null
echo -e "\e[1;35mDone \e[0m"
