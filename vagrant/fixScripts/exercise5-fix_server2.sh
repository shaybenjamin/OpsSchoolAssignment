#!/bin/bash
#add fix to exercise5-server2 here
sudo apt-get install sshpass #& sleep 10
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/' /etc/ssh/ssh_config

sudo service ssh restart

ssh-keygen -P "" -f /root/.ssh/id_rsa
cp ~/.ssh/id_rsa /home/vagrant/.ssh/id_rsa
cp ~/.ssh/id_rsa.pub /home/vagrant/.ssh/id_rsa.pub

sudo chmod 777 /home/vagrant/.ssh/id_rsa.pub
sudo chmod 777 /home/vagrant/.ssh/id_rsa
sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub root@192.168.100.10

sshpass -p vagrant ssh root@192.168.100.10 "sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config && 
                                            sudo service ssh restart && 
                                            sudo chmod 777 /home/vagrant/.ssh/id_rsa.pub && 
                                            sudo chmod 777 /home/vagrant/.ssh/id_rsa && 
                                            sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub root@server2 &&
                                            cat ~/.ssh/authorized_keys >> /home/vagrant/.ssh/authorized_keys"

cat ~/.ssh/authorized_keys >> /home/vagrant/.ssh/authorized_keys
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo service ssh restart
