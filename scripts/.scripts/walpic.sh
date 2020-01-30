#!/bin/bash

# Terminate picom
pidof picom && killall picom

# Import wal-colors
[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

# Convert hexadecimal to rgb
r=$(hextorgb.sh ${color1//#} | awk '{print $1;}')
g=$(hextorgb.sh ${color1//#} | awk '{print $2;}')
b=$(hextorgb.sh ${color1//#} | awk '{print $3;}')

# Convert 255 to 1.0
r=$(echo "scale=10;$r/255" | bc)
g=$(echo "scale=10;$g/255" | bc)
b=$(echo "scale=10;$b/255" | bc)

# Edit picom configuration file
sed -i.bak "/shadow-red/s/[0-9]*\.[0-9]*/$r/" $HOME/.config/picom.conf
sed -i.bak "/shadow-green/s/[0-9]*\.[0-9]*/$g/" $HOME/.config/picom.conf
sed -i.bak "/shadow-blue/s/[0-9]*\.[0-9]*/$b/" $HOME/.config/picom.conf

# Launch picom
picom &
