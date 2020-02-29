#!/bin/bash
#add fix to exercise5-server2 here
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/' /etc/ssh/ssh_config
sudo -u vagrant /bin/bash << VAGRANT_BLOCK
    ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa 2>/dev/null <<< y >/dev/null
    sshpass -p vagrant ssh-copy-id vagrant@server1
VAGRANT_BLOCK

sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config