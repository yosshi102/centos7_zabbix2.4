From centos:centos7
Run yum swap -y fakesystemd systemd
Run yum install -y openssh-server openssh-clients
Run yum install -y yum-utils wget tree vim net-tools
Run yum install -y http://yum.postgresql.org/9.3/redhat/rhel-7-x86_64/pgdg-centos93-9.3-1.noarch.rpm
Run yum install -y postgresql93-server postgresql93-contrib
Run yum install -y http://repo.zabbix.com/zabbix/2.4/rhel/7/x86_64/zabbix-release-2.4-1.el7.noarch.rpm
Run yum install -y zabbix-server-pgsql zabbix-web-pgsql zabbix-web-japanese zabbix-java-gateway
