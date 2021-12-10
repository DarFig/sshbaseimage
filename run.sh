#!/bin/bash
#wait
#sleep 1

#configure
echo "base $LDAP_BASE" >> /etc/ldap.conf
echo "uri $LDAP_URI" >> /etc/ldap.conf
echo "ldap_version $LDAP_VERSION" >> /etc/ldap.conf
echo "pam_password $PAM_PASSWORD" >> /etc/ldap.conf

echo $LDAP_BASE
apt-get install -y nscd ldap-utils
DEBIAN_FRONTEND=noninteractive 
apt-get install -y -q ldap-auth-client

#start services
service ssh start
service nscd start
systemctl enable nscd
bash
