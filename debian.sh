#!/bin/bash
#installs and setups nala (a apt front-end)
sudo apt install nala -y
sudo nala fetch

#checks for updates
sudo nala update
sudo nala dist-upgrade -y

#install some needed apps
sudo nala install curl -y

#install some wanted apps
sudo nala install fish lsd neovim zsh ranger -y

#installs the cli task manager btm (bottom)
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.9.6/bottom_0.9.6_amd64.deb
sudo dpkg -i bottom_0.9.6_amd64.deb

#install fastfetch
curl -LO https://github.com/fastfetch-cli/fastfetch/releases/download/2.4.0/fastfetch-2.4.0-Linux.deb
sudo dpkg -i fastfetch-2.4.0-Linux.deb

#set up zsh
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "fastfetch" >> .zshrc
sudo chsh -s /bin/zsh
