#!/bin/bash

cmd=$(echo -e "i3\ncompton\npolybar\nvim\nrofi\nconky\nemacs" | rofi -width 340 -dmenu -p Configuration:)
echo $cmd
case $cmd in
  i3)
    st -c float vim ~/.config/i3/config;;
  compton)
    st -c float vim ~/.config/compton.conf;;
  polybar)
    pbarfiles=$(echo -e "launch\nconfig" | rofi -width 340 -dmenu -p "Config Files":)
    case $pbarfiles in
      launch)
	st -c float vim ~/.config/polybar/launch.sh;;
      config)
	st -c float vim ~/.config/polybar/config;;
    esac;;
  rofi)
    rofifiles=$(echo -e "powermenu\nconfig_menu\nconfig" | rofi -width 340 -dmenu -p "Config Files":)
    case $rofifiles in
      powermenu)
	st -c float vim ~/.config/rofi/rofi-logout.sh;;
      config_menu)
	st -c float vim ~/.config/rofi/configs.sh;;
      config)
	st -c float vim ~/.config/rofi/config;;
    esac;;
  vim)
    st -c float vim ~/.vimrc;;
  conky)
    st -c float vim ~/.config/.conkyrc;;
  emacs)
    emacsfiles=$(echo -e "init.el\nconfig.el\npackages.el" | rofi -width 340 -dmenu -p "Config Files":)
    case $emacsfiles in 
      init.el)
	st -c float vim ~/.emacs.d/init.el;;
      config.el)
	st -c float vim ~/.emacs.d/config.el;;
      packages.el)
	st -c float vim ~/.emacs.d/packages.el;;
    esac;;
esac

