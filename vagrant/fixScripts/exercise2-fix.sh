#!/bin/bash
#add fix to exercise2 here
sudo sed -ie "\|^127.0.0.1 www.ascii-art.de\$|d" /etc/hosts
sudo perl -i -pe 's/[\t]+/ /' /etc/hosts
sudo sed -ie "s/server1 server1/server1/" /etc/hosts
