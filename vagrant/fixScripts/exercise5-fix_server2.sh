#!/bin/bash
#add fix to exercise5-server2 here
sudo apt-get install sshpass & sleep 10
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/' /etc/ssh/ssh_config
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo service ssh restart
sudo chmod -R go= ~/.ssh/
sudo chown -R vagrant:vagrant ~/.ssh/ 

ssh-keygen -q -t rsa -N '' -f /home/vagrant/.ssh/id_rsa 2>/dev/null <<< y >/dev/null
sshpass -p vagrant ssh-copy-id -f -i /home/vagrant/.ssh/id_rsa.pub root@server1
#ssh-add



