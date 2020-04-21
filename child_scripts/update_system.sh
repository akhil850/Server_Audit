#!/usr/bin/env bash
#Linux Basic Security Setup v1.2
echo "Running Full System Update"
# sudo yum install epel-release curl git wget -y 2>&1 >/dev/null
# yum update -y 2>&1 >/dev/null
sh /usr/src/Server_Audit/child_scripts/loader.sh
cd /usr/src/Server_Audit/
