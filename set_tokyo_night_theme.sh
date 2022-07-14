#!/bin/sh

git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/

mkdir -p ~/.local/share/themes/
mkdir -p ~/.local/share/icons/

cp -r ./themes/Tokyonight-Dark-BL/ ~/.local/share/themes/
cp -r ./icons/tokyonight-dark/ ~/.local/share/icons/
