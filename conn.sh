#!/bin/bash

source g_define.sh
SSH_PRI_KEY_PATH="/Users/lzy/ssh_docker/id_rsa"

ssh root@${SERVER_IP} -p ${SERVER_PORT} -i ${SSH_PRI_KEY_PATH}
