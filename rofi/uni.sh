#!/bin/bash

cd ~/UQ/Y2
for f in *; do
  echo "$f"
  var=$var\\n$f
done

cmd=$(echo -e $var | rofi -width 340 -dmenu -p Configuration:)
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
esac

