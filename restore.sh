#!/usr/bin/env bash
sudo apt install rofi diodon
chmod +x ~/.scripts/*

# Arc-Dark install
sudo apt install autoconf automake libgtk-3-dev git
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr --disable-light --disable-darker
sudo make install
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'
gsettings set org.gnome.desktop.wm.preferences theme 'Arc-Dark'

# Telegram setup
cd ~
wget https://updates.tdesktop.com/tlinux/tsetup.0.10.20.tar.xz


# Thunar setup
sudo apt install thunar lxappearance
echo "Please select the Numix Icon Theme Circle!"
lxappearance

# i3pystatus setup
sudo apt install python3-pip
sudo -H pip3 install i3pystatus
sudo -H pip3 install colour
sudo -H pip3 install psutil
sudo -H pip3 install netifaces
sudo apt install libiw-dev
sudo -H pip3 install basiciw
sudo -H pip3 install --upgrade pip

# java setup
sudo apt install oracle-java8-set-default

# i3-tools setup

sudo apt install xbacklight compton i3lock scrot nitrogen

# f.lux setup
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt update
sudo apt install fluxgui

# obs setup
sudo apt-add-repository ppa:obsproject/obs-studio
sudo apt update

# gimp setup
sudo apt install gimp

# vlc setup
sudo apt install vlc

# pavuctl setup
sudo apt install pavucontrol

# cava setup
sudo add-apt-repository ppa:tehtotalpwnage/ppa
sudo apt update
sudo apt install cava

# elinks setup
sudo apt install elinks

# openvpn setup
sudo apt install network-manager-openvpn-gnome

# media bindings
sudo apt purge totem rhythmbox

# atom beautify support
sudo -H pip install --upgrade autopep8
