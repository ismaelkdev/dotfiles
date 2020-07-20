#/usr/bin/env bash
dotfilesDIR=. # dotifles/
# Steps:
# 1. Check the current PC's availability script, if none is found then it means nothing is installed, so we can just run the full setup. Otherwise we
# can sort through the things needed to do.
# 2. i3
cd ./i3
i3Dir=.
cd ~/.config/i3
rm config
ln -s $i3Dir/config ./config

## Polybar || Symlinks and Updates ##
cd dotfilesDIR/polybar
polybarDIR=.
mkdir ~/.config/polybar/
cd ~/.config/polybar/
ln -s polybarDIR/config ./
ln -s polybarDIR/launch.sh ./

## Compton || Symlinks and Updates ##
cd dotfilesDIR/compton
comptonDIR=.

cd ~/.config
ln -s comptonDIR/compton.conf ./

cd dotfilesDIR/emacs
emacsDIR=.

cd 
ln -s emacsDIR/.emacs.d/ ./
ln -s emacsDIR/.doom.d/ ./

cd dotfilesDIR/st
make && sudo make install

cd dotfilesDIR/vim
vimDIR=.
cd
ln -s vimDIR/.vimrc ./
ln -s vimDIR/.vim ~/.config/

