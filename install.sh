#!/bin/bash
local= pwd;
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
    "VMware" "VWware_Driver" off \
    "VirtualBox" "Virtualbox_Driver" OFF 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
     ./$Driver.sh
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
    echo "$usuario ALL=(ALL)ALL" >> /etc/sudoers;
    cd /home/$usuario;
    mkdir Downloads Videos  Desktop Documents Music Pictures;
    sudo pacman -S zsh ;
    chmod 777 -r *;
else
    echo ""
fi

#-> Interface installation
Interface=$(whiptail --title "Interface Install" --radiolist \
    "Qual interface deseja instalar?" 15 60 5 \
    "LXQT" "QT interface" OFF \
    "Gnome" "Gnome_Shell" ON \
    "Mate" "Mate" OFF \
    "KDE" "KDE" OFF \
    "XFCE" "XFCE" OFF 3>&1 1>&2 2>&3)
 
exitstatuws=$?
if [ $exitstatuws = 0 ]; then
    git clone https://github.com/felipecaninnovaes/arch_pos_felipecn.git;
    cd arch_pos_felipecn;
    chmod +x *;
    ./$Interface.sh;
else
    echo "";
fi

