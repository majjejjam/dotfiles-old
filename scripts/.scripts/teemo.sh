#!/bin/bash

if [ -z $1 ]
	then echo "No input was given. Please choose a color: 0-8." && exit 1
fi

#pidof picom && killall picom

sed -i.bak "/background-alt/s/color[0-9]/color$1/g" $HOME/.config/polybar/config
sed -i.bak "s/color[0-9]/color$1/g" $HOME/.scripts/walpic.sh
sed -i.bak "s/color[0-9]/color$1/g" $HOME/.scripts/wally.sh

#$HOME/.config/polybar/launch.sh
$HOME/.scripts/wally.sh

#walpic.sh
#picom &
