#!/bin/bash
#checks for updates
sudo pacman -Syyu --noconfirm

#install some needed apps
sudo pacman -S curl --noconfirm --needed

#install some wanted apps
sudo pacman -S lsd neovim ranger zsh ranger bottom fastfetch zsh-autosuggestion zsh-completions zsh-syntax-highlighting --noconfirm

#set up zsh
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "fastfetch" >> .zshrc
sudo chsh -s /bin/zsh
