#!/bin/bash
#add fix to exercise5-server1 here
sudo apt-get install sshpass #&& sleep 10
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/' /etc/ssh/ssh_config

ssh-keygen -P "" -f /home/vagrant/.ssh/id_rsa
# sudo chmod 777 /home/vagrant/.ssh/id_rsa.pub
# sudo chmod 777 /home/vagrant/.ssh/id_rsa