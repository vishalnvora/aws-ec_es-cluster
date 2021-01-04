#!/bin/bash


sudo rm /boot/grub/menu.lst
sudo apt upgrade -y
sudo apt install -y software-properties-common git python-dev htop ntp jq apt-transport-https
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y 
sudo apt install python3.8
sudo python ––version
# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py
pip install boto awscli
