#!/usr/bin/env bash
echo "Installing Git...."
sudo yum install epel-release -y 2>&1 >/dev/null
sudo yum install git -y 2>&1 >/dev/null
echo "Done"
echo "Setting Up Working Directories [/usr/src/] "
cd /usr/src/
git clone https://github.com/akhil850/Server_Audit.git
