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
cp .vimrc ~

# Vim Plug
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Nvim Plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#TMUX Plugin
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
