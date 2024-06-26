#!/bin/bash

sudo apt update

#install utils
sudo apt install nala -y

sudo nala install tree docker docker-compose curl wget neofetch ufw iperf3 htop cifs-utils tmux -y

#upgrade
sudo nala upgrade -y

#bashrc edit
cp .config/.bash_aliases ~
cp .config/.tmux.conf ~
cp .config/.vimrc ~
