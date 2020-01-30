for i in `curl https://raw.githubusercontent.com/akhil850/Server_Audit/master/important_ips`; do echo $i >> /etc/csf/csf.ignore; done
for i in `curl https://raw.githubusercontent.com/akhil850/Server_Audit/master/important_ips`; do csf -a $i; done
clear
