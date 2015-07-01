#!/bin/bash

# Disable tunnelled clear text passwords
#sed -i.org -e "s/PasswordAuthentication yes/PasswordAuthentication no/g" /etc/ssh/sshd_config
#service sshd restart

# Change to Japanese locale
yum -y groupinstall "Japanese Support" 
sed -i.org -e "s/en_US.UTF-8/ja_JP.UTF-8/g" /etc/sysconfig/i18n

# Change to JST time zone
rm -f /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# SL Command Install
wget --no-check-certificate https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py && python ez_setup.py
wget --no-check-certificate https://raw.github.com/pypa/pip/master/contrib/get-pip.py && python get-pip.py
pip install importlib
pip install softlayer
pip install requests==2.5.3
