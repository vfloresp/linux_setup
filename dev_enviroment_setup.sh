#!/bin/sh
apt update

# pip
apt install python3-pip

# Vim
apt install neovim

# Neofetch
apt install neofetch

# node/npm 
# After downloading in same directory latest tar.xz NodeJS file
tar -xf node-v#.#.#-linux-x64.tar.xz
mv node-v#.#.#-linux-x64/bin/* /usr/local/bin/
mv node-v#.#.#-linux-x64/lib/node_modules/ /usr/local/lib/
# Where #.#.# is the version downloaded

# Alacritty-themes
npm i -g alacritty-themes
touch ~/.alacritty.yml

# pyenv
#first install dependencies
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev openssl
# install pyenv installer
curl https://pyenv.run | bash
# add to ~/.bashrc:
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.baschrc
echo 'eval "$(pyenv init --path)"' >> ~/.baschrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.baschrc

# pipenv
pip install pipenv



# Hydra paper
sudo apt-get install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gabmus.hydrapaper

# Microsoft fonts
sudo apt-get install ttf-mscorefonts-installer
sudo fc-cache -f -v
