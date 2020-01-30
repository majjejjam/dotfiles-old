#!/bin/sh

#        -lf/nf/cf color
#            Defines the foreground color for low, normal and critical notifications respectively.
# 
#        -lb/nb/cb color
#            Defines the background color for low, normal and critical notifications respectively.
# 
#        -lfr/nfr/cfr color
#            Defines the frame color for low, normal and critical notifications respectively.

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

pidof dunst && killall dunst

dunst -lf  "${color8:-#ffffff}" \
      -lb  "${color0:-#000000}" \
      -lfr "${color2:-#a06e3b}" \
      -nf  "${color7:-#cccccc}" \
      -nb  "${color0:-#123123}" \
      -nfr "${color5:-#ffffff}" \
      -cf  "${color1:-#999999}" \
      -cb  "${color0:-#123123}" \
      -cfr "${color8:-#a06e3b}" > /dev/null 2>&1 &
