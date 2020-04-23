#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
sed -i 's/#Port 22/Port 33122/g' /etc/ssh/sshd_config
echo "New SSH Port::"
grep 33122 /etc/ssh/sshd_config --color
service sshd restart
echo -e "\e[1;35mDone \e[0m"
