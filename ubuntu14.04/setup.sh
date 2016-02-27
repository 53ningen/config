#!/usr/bin/bash

PUBLIC_KEY=''

sudo apt-get update
sudo apt-get install -y ssh vim iptables git tmux python-pip curl 
sudo pip install ansible
mkdir .ssh

# 鍵登録
echo $PUBLIC_KEY >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

# Port 変更
# vim /etc/ssh/sshd_config
# PermitRootLogin no
# PasswordAuthentication no
# sudo service ssh restart

# firewall
sudo ufw default deny
sudo ufw allow $SSH_PORT
sudo ufw limit $SSH_PORT
sudo ufw logging row
sudo ufw enable

