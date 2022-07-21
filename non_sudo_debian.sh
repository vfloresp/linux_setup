
# pipenv
pip install pipenv

# For pyenv
# install pyenv installer
curl https://pyenv.run | bash

# .bashrc
echo '\n # Pyenv' >> ~/.bashrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# requiered directories
mkdir -p ~/.config/alacritty/
mkdir -p ~/.config/zsh/
mkdir -p /etc/apt/keyrings
