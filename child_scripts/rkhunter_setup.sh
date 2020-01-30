#!/usr/bin/env bash
sudo yum install epel-release -y 2>&1 >/dev/null
sudo yum install rkhunter -y 2>&1 >/dev/null
sudo rkhunter --update
sudo rkhunter --propupd 2>&1 >/dev/null
sudo rkhunter --check --sk 2>&1 >/dev/null
