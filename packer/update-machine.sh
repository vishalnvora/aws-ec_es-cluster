#!/bin/bash

sudo rm /boot/grub/menu.lst
sudo apt upgrade -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install -y software-properties-common git python-dev htop ntp jq apt-transport-https python3.7
sudo apt update -y 


# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
rm get-pip.py
pip3 install boto awscli