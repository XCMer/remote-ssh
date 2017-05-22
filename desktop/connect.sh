#!/usr/bin/env bash

. ./../vars.sh
autossh -M ${AUTO_SSH_PORT} -fN -o "PubkeyAuthentication=yes" -o "StrictHostKeyChecking=false" -o "PasswordAuthentication=no" -o "ServerAliveInterval 60" -o "ServerAliveCountMax 3" -R ${SERVER_IP}:${SERVER_SSH_PORT}:${SERVER_USERNAME}:22 ${SERVER_USERNAME}@${SERVER_IP}