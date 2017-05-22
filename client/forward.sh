#!/usr/bin/env bash

. ./../vars.sh
ssh -p ${SERVER_SSH_PORT} -L $1:${SERVER_IP}:$1 raahul@${SERVER_IP}
