rpm -Uvh https://repo.zabbix.com/zabbix/4.2/rhel/7/x86_64/zabbix-release-4.2-2.el7.noarch.rpm
yum clean all
yum install zabbix-agent -y
yum update -y
firewall-cmd --zone=public --add-port=10050/tcp --permanent
firewall-cmd --reload
systemctl enable zabbix-agent