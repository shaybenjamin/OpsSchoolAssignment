#!/bin/bash
#add fix to exercise4-server2 here
sudo sed -i '2 a 192.168.100.10 server1' /etc/hosts
sudo perl -i -pe 's/[ \t]+/ /' /etc/hosts
sudo sed -ie "s/server2 server2/server2/" /etc/hosts
