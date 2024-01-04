#!/usr/bin/env bash

sudo apt update

sudo apt upgrade

sudo fallocate -l 1g /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
echo '/swapfile swap swap defaults 0 0' | sudo tee -a /etc/fstab
sudo swapon -a

sudo apt install xubuntu-desktop

sudo reboot
