#!/usr/bin/env bash
echo "This script will completely disable SELinux."
setenforce 0
sudo sed -i 's/enforcing/disabled/g' /etc/selinux/config
sudo sestatus
echo ""
