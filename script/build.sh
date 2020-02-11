#!/bin/bash

buildRoot=/build
scriptRoot=$buildRoot/script

source $scriptRoot/pre_build.sh

#ssh
mkdir ~/.ssh
cat $scriptRoot/id_rsa.pub > ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
sed -i "s/.*RSAAuthentication.*/RSAAuthentication yes/g" /etc/ssh/sshd_config
sed -i "s/.*PubkeyAuthentication.*/PubkeyAuthentication yes/g" /etc/ssh/sshd_config
sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication no/g" /etc/ssh/sshd_config
sed -i "s/.*AuthorizedKeysFile.*/AuthorizedKeysFile\t\.ssh\/authorized_keys/g" /etc/ssh/sshd_config
sed -i "s/.*PermitRootLogin.*/PermitRootLogin no/g" /etc/ssh/sshd_config
echo "${USER_NAME}      ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
systemctl restart sshd.service

yum clean all
