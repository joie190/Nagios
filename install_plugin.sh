#!/bin/sh
apt-get update
apt-get install -y autoconf gcc libc6 libmcrypt-dev make \
	libssl-dev wget bc gawk dc build-essential snmp libnet-snmp-perl \
	gettext
cd /tmp
wget --no-check-certificate -O nagios-plugins.tar.gz \
https://github.com/nagios-plugins/nagios-plugins/archive/release-2.3.3.tar.gz
tar zxf nagios-plugins.tar.gz
cd /tmp/nagios-plugins-release-2.3.3/
./tools/setup
./configure 
make
make install
