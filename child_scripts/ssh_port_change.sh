#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
echo ""
echo "============================="
echo "Changing SSH port to >> 33122"
echo "============================="
sed -i 's/#Port 22/Port 33122/g' /etc/ssh/sshd_config
echo "New SSH Port::"
grep 33122 /etc/ssh/sshd_config --color
service sshd restart
echo ""
echo "SSH Service Status::"
service sshd status |awk '{print $2,$3}' | grep active --color
echo "-----------------------------"
echo ""
echo "!! MANUAL Verify !!"
echo ""
