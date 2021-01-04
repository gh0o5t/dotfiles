#!/usr/bin/env bash

# Install script for automating Suckless software installation on Debian and for settung up adn ricning the system
# For setting up monitors edit ~/.xinitrc 
# In this version there is nor DM at all.

echo "During installation you will be prompted to provide your sudo pw."
echo "Press any key to start..."
read

SUCKLESS_HOME=$HOME/Suckless
REQS="build-essential xorg xinput x11-xserver-utils libimlib2-dev libxft-dev libfontconfig1 libx11-6 libxinerama-dev xserver-xorg-dev \
compton vim vim-gtk pcmanfm arandr lxappearance htop ranger tmux qt5ct feh firefox-esr alsa-utils network-manager dunst locate"

# check if root
#if [ "$EUID" -ne 0 ]
  #then echo "Please run as root"
  #exit
#fi

sudo apt install -y $REQS

# Here I need to install most of the dot files and themes, icons, 

# Vim plugins
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c PlugInstall -c qa

# Tmux plugins
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
$HOME/.tmux/plugins/tpm/scripts/install_plugins.sh

# Create Suckless home and clone repos
mkdir $SUCKLESS_HOME
git clone https://github.com/gh0o5t/dwm.git $SUCKLESS_HOME/dwm
git clone https://github.com/gh0o5t/st.git $SUCKLESS_HOME/st
git clone https://github.com/gh0o5t/dmenu.git $SUCKLESS_HOME/dmenu


# Build and install Suckless
cd $SUCKLESS_HOME/dwm 
make && sudo make install

cd $SUCKLESS_HOME/st 
make && sudo make install

cd $SUCKLESS_HOME/dmenu
make && sudo make install

# Dwmblcoks and slock should be added here

