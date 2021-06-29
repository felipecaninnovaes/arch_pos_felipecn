#!/bin/bash
local=$(pwd);
export local;
sudo rm /etc/locale.gen;
sudo cp locale.gen /etc/locale.gen;
sudo locale-gen;

#-> Driver Install
Driver=$(whiptail --title "Driver Install" --radiolist \
    "Qual sua placa de video?" 15 60 6 \
    "Nvidia" "Nvidia_Placa" OFF \
    "Nvidia-390xx" "Nvidia Placa (Legacy)" OFF \
    "Intel" "Intel_Integrada" ON \
    "AmdGpu" "Amd_Radeon(Ryzen APU)" off \
    "VMWare" "VWware_Driver" off \
    "VirtualBox" "Virtualbox_Driver" OFF 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
     bash ./source/drivers/$Driver.sh
else
    echo ""
fi

#-> Create User

usuario=$(whiptail --title "Nome de Usuario" --inputbox "Insira o Nome sem letras maiusculas." 10 60 3>&1 1>&2 2>&3)
exitstatuss=$?
if [ $exitstatuss = 0 ]; then
    useradd -m -g users -G wheel $usuario;
    echo "DIGITE A SENHA QUE DESEJA PARA O USUARIO";
    passwd $usuario;
    cd /home/$usuario;
    echo "$usuario ALL=(ALL)ALL" >> /etc/sudoers;
    mkdir Downloads Videos Desktop Documents Music Pictures;
    sudo pacman -S --needed zsh --noconfirm ;
    chmod -R 777 /home/$usuario;
    cd $local;
else
    echo ""
fi

export usuario;

#-> Driver Install
boot=$(whiptail --title "Driver Install" --radiolist \
    "Qual sue tipo de BIOS?" 15 60 6 \
    "efi" "Mais atual" OFF \
    "legacy" "bios legada" OFF 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
    bash ./source/grub/$boot.sh
else
    echo ""
fi

#-> Interface installation
Interface=$(whiptail --title "Interface Install" --radiolist \
    "Qual interface deseja instalar?" 15 60 7 \
    "LXQT" "QT interface" OFF \
    "Gnome" "Gnome_Shell" ON \
    "Mate" "Mate" OFF \
    "KDE" "KDE" OFF \
    "BSPWM" "BSPWM" OFF \
    "XFCE" "XFCE" OFF 3>&1 1>&2 2>&3)
 
exitstatuws=$?
if [ $exitstatuws = 0 ]; then
   chmod +x *;
   bash ./source/Base.sh;
   bash ./source/interfaces/$Interface/$Interface.sh;
else
    echo "";
fi