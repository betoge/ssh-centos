#!/bin/bash

PORT=22245
SSH_KEY_PATH="/Users/lzy/ssh_docker"

DOCKER_PS_KEY=`docker run -d -p ${PORT}:22 -v ${SSH_KEY_PATH}:/ssh_key ssh-centos`
#docker exec -it ${DOCKER_PS_KEY}
ssh root@127.0.0.1 -p $PORT -i ${SSH_KEY_PATH}/id_rsa
