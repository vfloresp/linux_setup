#!/bin/sh

# dnf config
echo '# Added config' >> ~/etc/dnf/dnf.conf
echo 'max_parallel_downlods=5' >> ~/etc/dnf/dnf.conf
echo 'defaultyes=True' >> ~/etc/dnf/dnf.conf
echo 'keepcache=True' >> ~/etc/dnf/dnf.conf

# Update system
dnf update

# Setting up RPM
# Free and non free repos
sudo dnf install \ 
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# App stream metadata
sudo dnf groupupdate core

# Alacritty
dnf install alacritty
mkdir -p ~/.config/alacritty/
cp ./alacritty.yml ~/.config/alacritty/

# Neovim
dnf install neovim
cp -R ./nvim/ ~/.config/

# Adding flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Flatpak apps
flatpak install -y flathub com.slack.Slack
flatpak install -y flathub com.vscodium.codium
flatpak install -y flathub com.brave.Browser
flatpak install -y flathub rest.insomnia.Insomnia
flatpak install -y flathub org.onlyoffice.desktopeditors
flatpak install -y flathub com.bitwarden.desktop
flatpak install -y flathub us.zoom.Zoom
flatpak install -y flathub com.jetbrains.PyCharm-Community
flatpak install -y flathub com.simplenote.Simplenote
flatpak install -y flathub app.ytmdesktop.ytmdesktop
flatpak install -y flathub md.obsidian.Obsidian
flatpak install -y flathub org.signal.Signal
flatpak install -y flathub com.valvesoftware.Steam

# pip
dnf install python3-pip


# Neofetch
dnf install neofetch

# node/npm 
# After downloading in same directory latest tar.xz NodeJS file
tar -xf node-v#.#.#-linux-x64.tar.xz
mv node-v#.#.#-linux-x64/bin/* /usr/local/bin/
mv node-v#.#.#-linux-x64/lib/node_modules/ /usr/local/lib/
# Where #.#.# is the version downloaded

# pyenv
#first install dependencies
sudo dnf install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev openssl
# install pyenv installer
curl https://pyenv.run | bash
# add to ~/.bashrc:
echo '\n #Pyenv setup' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# pipenv
pip install pipenv


# Microsoft fonts
sudo apt-get install ttf-mscorefonts-installer
sudo fc-cache -f -v
