sudo pacman -S haveged
sudo systemctl enable haveged
nano /etc/locale.gen
useradd -m -g users -G wheel felipecn # create user
passwd felipecn
echo "felipecn ALL=(ALL)ALL" /etc/sudoers #add user creted in sudoers file
cd /home/felipecn
mkdir Downloads Videos  Desktop Documents Music Pictures # gen manual folders 
sudo pacman -S --ignore zsh vlc git go ttf-dejavu ttf-freefont #install core apps 
#Oh my Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
mkdir Projects
#YAY
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
#Snap Apps Install
snap install vscode --classic
snap install netbeans --classic
snap install kdenlive
