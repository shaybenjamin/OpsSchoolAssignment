#!/bin/bash
#add fix to exercise5-server1 here
sudo apt-get install sshpass #&& sleep 10
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/' /etc/ssh/ssh_config

ssh-keygen -P "" -f /root/.ssh/id_rsa
cp ~/.ssh/id_rsa /home/vagrant/.ssh/id_rsa
cp ~/.ssh/id_rsa.pub /home/vagrant/.ssh/id_rsa.pub