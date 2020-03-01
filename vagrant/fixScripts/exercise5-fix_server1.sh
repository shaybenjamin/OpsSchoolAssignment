#!/bin/bash
#add fix to exercise5-server1 here
sudo apt-get install sshpass && sleep 10
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/' /etc/ssh/ssh_config
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

ssh-keygen -P "" -f /home/vagrant/.ssh/id_rsa
sudo chmod 777 /home/vagrant/.ssh/id_rsa
sleep 300&& sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub root@server2 &



# sudo service ssh restart
# sudo chown -R vagrant:vagrant ~/.ssh/ 
# sudo chmod -R go= ~/.ssh/

# ssh-keygen -q -t rsa -N '' -f /home/vagrant/.ssh/id_rsa 2>/dev/null <<< y >/dev/null
# sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub root@server2



