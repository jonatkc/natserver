#!/bin/bash

sudo apt update

#install utils
sudo apt install nala -y

sudo nala install docker-compose curl wget neofetch ufw iperf3 neovim htop cifs-utils tmux -y

#upgrade
sudo nala upgrade -y

#bashrc edit
cp .bash_aliases ~
cp .tmux.conf ~
