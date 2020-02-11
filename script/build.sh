#!/bin/bash

buildRoot=/build
scriptRoot=$buildRoot/script

source $scriptRoot/pre_build.sh

#ssh

/usr/sbin/sshd-keygen -A
sed -i "s/.*PubkeyAuthentication.*/PubkeyAuthentication yes/g" /etc/ssh/sshd_config
sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication no/g" /etc/ssh/sshd_config
sed -i "s/.*AuthorizedKeysFile.*/AuthorizedKeysFile\t\/ssh_key\/authorized_keys/g" /etc/ssh/sshd_config
sed -i "s/.*PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config

echo "root      ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
/usr/sbin/sshd

yum clean all
