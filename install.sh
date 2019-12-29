#!/bin/bash
local= pwd
Driver=$(whiptail --title "Driver Install" --radiolist \
"Qual sua placa de video?" 15 60 4 \
"Nvidia" "Nvidia_Placa" OFF \
"Intel" "Intel_Integrada" ON \
"VirtualBox" "Vboxdriver" OFF 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
     ./$Driver.sh
else
    echo ""
fi
#Criando Usuario
usuario=$(whiptail --title "Nome de Usuario" --inputbox "Insira o Nome sem letras maiusculas." 10 60 3>&1 1>&2 2>&3)
exitstatuss=$?
if [ $exitstatuss = 0 ]; then
    useradd -m -g users -G wheel $usuario
    echo "DIGITE A SENHA QUE DESEJA PARA O USUARIO"
    passwd $usuario
    echo "$usuario ALL=(ALL)ALL" >> /etc/sudoers
    cd /home/$usuario
    mkdir Downloads Videos  Desktop Documents Music Pictures
    sudo pacman -S zsh 
    chmod 777 -r *
else
    echo ""
fi

Interface=$(whiptail --title "Interface Install" --radiolist \
"Qual interface deseja instalar?" 15 60 4 \
"LXQT" "QT interface" OFF \
"Gnome" "Gnome_Shell" ON \
"Mate" "Mate" OFF \
"XFCE" "XFCE" OFF 3>&1 1>&2 2>&3)
 
exitstatuws=$?
if [ $exitstatuws = 0 ]; then
     ./$Interface.sh
else
    echo ""
fi
su $usuario
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp $local
cp .zshrc /home/$usuario
