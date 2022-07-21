#!/bin/sh
apt update

# pip
apt install -y python3-pip

# pipenv
sudo -u vfloresp pip install pipenv

# Vim
apt install -y neovim

# Neofetch
apt install -y neofetch

# pyenv
#first install dependencies
apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev openssl
# install pyenv installer
sudo -u vfloresp curl https://pyenv.run | bash

# .bashrc
sudo -u vfloresp echo '\n # Pyenv' >> ~/.bashrc
sudo -u vfloresp echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
sudo -u vfloresp echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
sudo -u vfloresp echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# Adding flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
 
#Docker
apt remove docker docker-engine docker.io containerd runc
apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo -u vfloresp mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
# Sudo privileges
groupadd docker
usermod -aG docker $USER

# stow
apt install -y stow

# Microsoft fonts
apt install ttf-mscorefonts-installer
fc-cache -f -v

# Requiered directories
sudo -u vfloresp mkdir -p ~/.config/alacritty/
sudo -u vfloresp mkdir -p ~/.config/zsh/
