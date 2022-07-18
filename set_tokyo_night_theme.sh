#!/bin/sh

git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git

mkdir -p ~/.local/share/themes/
mkdir -p ~/.local/share/icons/

cp -r Tokyo-Night-GTK-Theme/themes/Tokyonight-Dark-BL/ ~/.local/share/themes/
cp -r Tokyo-Night-GTK-Theme/icons/tokyonight_dark/ ~/.local/share/icons/
cp -r Tokyo-Night-GTK-Theme/wallpapers ~/Pictures/

rm -r Tokyo-Night-GTK-Theme
