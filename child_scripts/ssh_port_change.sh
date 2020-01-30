#!/usr/bin/env bash
echo ""
echo "============================="
echo "Changing SSH port to >> 22133"
echo "============================="
sed -i 's/#Port 22/Port 22133/g' /etc/ssh/sshd_config
echo "New SSH Port::"
grep 22133 /etc/ssh/sshd_config --color
service sshd restart
echo ""
echo "SSH Service Status::"
service sshd status |awk '{print $2,$3}' | grep active --color
echo "-----------------------------"
echo ""
echo "!! MANUAL Verify !!"
echo ""
