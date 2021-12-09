#!/bin/bash
#wait
sleep 1

#configure
echo "base $LDAP_BASE" >> /etc/ldap.conf
echo "uri $LDAP_URI" >> /etc/ldap.conf
echo "ldap_version $LDAP_VERSION" >> /etc/ldap.conf
echo "pam_password $PAM_PASSWORD" >> /etc/ldap.conf


#start serices
service ssh start
service nscd start
systemctl enable nscd
bash
