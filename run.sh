#!/bin/bash

SSH_KEY_PATH="/Users/lzy/ssh_docker"

DOCKER_PS_KEY=`docker run -d -p ${PORT}:22 -v ${SSH_KEY_PATH}:/ssh_key ssh-centos`

echo DOCKER_PS_KEY
