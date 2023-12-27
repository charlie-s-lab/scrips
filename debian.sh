#installs and setups nala (a apt front-end)
sudo apt install nala -y
sudo nala fetch

#checks for updates
sudo nala update
sudo nala dist-upgrade -y

#install some needed apps
sudo nala install curl -y

#install some wanted apps
sudo nala install fish neovim -y

#installs the cli task manager btm (bottom)
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.9.6/bottom_0.9.6_amd64.deb
sudo dpkg -i bottom_0.9.6_amd64.deb

