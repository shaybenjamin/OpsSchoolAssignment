#!/bin/bash
#add fix to exercise1 here
sudo sed -ie "\|^127.0.0.1 textfiles.com\$|d" /etc/hosts

#sudo reboot