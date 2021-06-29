#!/bin/bash
sudo pacman --needed -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings bspwm sxhkd feh rofi alacritty git --noconfirm

rm -r /home/$usuario/.config/bspwm
rm -r /home/$usuario/.config/sxhkd
rm -r /home/$usuario/.config/rofi
rm -r /home/$usuario/.config/polybar
rm -r /home/$usuario/.config/gtk-3.0

cp -R $local/source/interface/BSPWM/.config /home/$usuario/

sudo systemctl enable lightdm