#!/bin/sh

mkdir -p ~/.local/share/fonts/
mkdir ./FiraCode

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip 
unzip FiraCode.zip -d ./FiraCode

mv ./FiraCode ~/.local/share/fonts/

fc-cache -v
