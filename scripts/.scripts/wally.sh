#!/bin/bash

# Import wal-colors
[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

# Replace color in bspwmrc
sed -i.bak -e "/normal_border/s/\#....../${color1}/" -e "/active_border/s/\#....../${color1}/" $HOME/.config/bspwm/bspwmrc

# Reload bspwmrc
$HOME/.config/bspwm/bspwmrc

# Replace color in config.rasi for rofi
sed -i.bak "/border-color/s/border-color: .*;/border-color: ${color1};/" $HOME/.cache/wal/colors-rofi-dark.rasi
