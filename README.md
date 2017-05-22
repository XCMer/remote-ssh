# Connect to your desktop via SSH from anywhere

Looking for an alternative to `ngrok` or `localtunnel.me`? Want to host it yourself? All you need is a Linux server to act as a relay.

## Pre-requisite

You need a Linux server from a place like DigitalOcean or Linode. It should have a public IP. We'll call this server the "relay server."

## Configuration

Open `vars.sh` and fill the following details:

```
SERVER_USERNAME=<your relay server username> 
SERVER_IP=<your relay server IP>
SERVER_SSH_PORT=<SSH port to connect to the server>
AUTO_SSH_PORT=<SSH port to act as a heartbeat>

DESKTOP_USERNAME=<username of your desktop machine>
```

You will:

1. Need to be able to connect to the relay server from the desktop via a ssh key
1. Connect to the desktop from your laptop via a ssh key

## Steps

### 1. Connect the desktop

Run `desktop/connect.sh` on your desktop. It'll initiate a session to your relay server.

### 2. Connect from your laptop

Run `client/connect.sh` to ssh into your desktop.

Run `client/forward.sh <PORT>` on your laptop to connect the given ports on your laptop and your desktop. So, if you have Jupyter running on port 8888 on your desktop, then accessing 8888 on your laptop would access the desktop's port 8888.
