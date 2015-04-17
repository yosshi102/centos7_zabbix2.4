From centos:centos7
Volume /var/lib/pgsql
Run yum swap -y fakesystemd systemd
Run yum install -y langtable langtable-data
Run localedef -vc -i ja_JP -f UTF-8 ja_JP.UTF-8
Run localectl
Run localectl set-locale LANG=ja_JP.UTF8
Run yum install -y openssh-server openssh-clients
Run systemctl enable sshd
Run yum install -y yum-utils wget tree vim net-tools sendmail sendmail-cf mailx
Run systemctl enable sendmail 
Run yum install -y http://repo.zabbix.com/zabbix/2.4/rhel/7/x86_64/zabbix-release-2.4-1.el7.noarch.rpm
Run yum install -y zabbix-server-pgsql zabbix-web-pgsql zabbix-web-japanese zabbix-java-gateway
Run systemctl enable httpd
Run cp -p /etc/php.ini /etc/php.ini.org
Run sed -i "s/;date.timezone = /date.timezone = \"Asia\/Tokyo\"/" /etc/php.ini
Run systemctl enable httpd
#Run yum install -y http://yum.postgresql.org/9.3/redhat/rhel-7-x86_64/pgdg-centos93-9.3-1.noarch.rpm
#Run yum install -y postgresql93-server postgresql93-contrib


=======
>>>>>>> 4294b5842b7a117f5f9c6b5d6be2f7a456e61722
