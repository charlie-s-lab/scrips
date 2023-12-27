#!/bin/bash
#checks for updates
sudo pacman -Syyu --noconfirm

#install some needed apps
sudo pacman -S curl --noconfirm

#install some wanted apps
sudo pacman -S fish lsd neovim zsh ranger bottom fastfetch --noconfirm

#set up zsh
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "fastfetch" >> .zshrc
sudo chsh -s /bin/zsh
