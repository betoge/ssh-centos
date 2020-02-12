#!/bin/bash

source g_define.sh
SSH_PRI_KEY_PATH="/Users/lzy/ssh_docker/id_rsa"

ssh root@${IP} -p ${PORT} -i ${SSH_PRI_KEY_PATH}
