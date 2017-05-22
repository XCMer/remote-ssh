#!/usr/bin/env bash

. ./../vars.sh
ssh -p ${SERVER_SSH_PORT}  ${DESKTOP_USERNAME}@${SERVER_IP}
