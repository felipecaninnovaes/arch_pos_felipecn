#!/bin/bash

sudo pacman -S --needed git base-devel;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd;
sudo rm -R yay;
yay -S polybar --noconfirm;