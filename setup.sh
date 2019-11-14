# A simple script that installs relevant software for my Ubuntu machines
# I tried to limit as many assumptions as possible apart from the obvious
# fact that it should be running an Ubuntu OS (Mainly for the aptitude package
# manager) 
#
# There are still key features missing and this is for a pure setup with no
# initial installation.

sudo apt install vim python-pip3 python-pip texlive-full i3 wine lutris git feh
ranger xfonts-terminus compton conky rofi

# Installation of Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Cloning the .vimrc file to ~/
cp .vimrc ~/.vimrc

# Run PlugInstall
vim -c "PlugInstall | q | q"

#i3-gaps dependencies for Ubuntu
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev
libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev
libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev
libtool libxcb-shape0-dev

# Cloning i3-gaps fork with rounded edges 
git clone https://www.github.com/resloved/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
rm -rf build
# Brings back to dotfiles/
cd ..
cd ..

mkdir ~/.config/i3
cp config ~/.config/i3/config

cp wallpaper.png ~/Downloads

# Extra fun stuff for i3.
sudo apt-get install wget ranger mediainfo highlight tmux calcurse  newsbeuter
moc qutebrowser imagemagick transmission-cli atool xcompmgr blender pinta gimp
markdown mupdf evince audacity vim-latexsuite rsync syncthing cups screenfetch
scrot unzip unrar biber ntfs-3g deepin-terminal zip irssi unzip 

# Copy compton config file to .config
cp compton.conf ~/.config/compton.conf

# Clone local configuration of st to ~
mkdir ~/st
cp ./st ~/ -r

# Compile and build st
cd ~/st
make
sudo make install

# Installing Discord!
sudo snap install discord

# Installing Spotify!
sudo snap install spotify


