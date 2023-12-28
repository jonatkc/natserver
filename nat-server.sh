#!/bin/bash

sudo apt update

#install utils
sudo apt install nala

sudo nala install docker-compose vim curl git wget neofetch ufw iperf3 neovim htop cifs-utils -y
#upgrade
sudo nala upgrade -y

#bashrc edit
cd ~
echo -e " alias sudo='sudo '\n alias apt='nala'" | tee -a .bashrc
