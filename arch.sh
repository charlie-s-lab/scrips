#!/bin/bash
#adding the Chaotic-AUR
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
sudo echo "[chaotic-aur]" >> /etc/pacman.conf
sudo echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf

#checks for updates
sudo pacman -Syyu --noconfirm

#install some needed apps
sudo pacman -S curl wget git --noconfirm --needed

#install some wanted apps
sudo pacman -S lsd neovim-qt flatpak ranger zsh ranger bottom neofetch zsh-autosuggestion zsh-completions zsh-syntax-highlighting github-cli kdenlive\
chaotic-aur/github-desktop chaotic-aur/prismlauncher-qt5 chaotic-aur/brave-bin chaotic-aur/appimagelauncher chaotic-aur/spotify-adblock-git --noconfirm
#sudo flatpak install -y ##app




#set up zsh
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "neofetch \n \n" >> .zshrc
echo "alias vim=nvim"
echo "alias ls='lsd -al'"
sudo chsh -s /bin/zsh
