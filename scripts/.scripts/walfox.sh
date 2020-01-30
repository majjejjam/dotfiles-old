#!/bin/bash

# Import colors from pywal
if [ -f "$HOME/.cache/wal/colors" ]
then
	bg=$(cat $HOME/.cache/wal/colors | awk 'NR==1')
	fg=$(cat $HOME/.cache/wal/colors | awk 'NR==8')
fi

obg=$(awk '/bg/{print $4}' $HOME/.mozilla/firefox/*.default-esr/chrome/userChrome.css)
ofg=$(awk '/fg/{print $4}' $HOME/.mozilla/firefox/*.default-esr/chrome/userChrome.css)

sed -i.bak "s/$obg/$bg/gI" $HOME/.mozilla/firefox/*.default-esr/chrome/userChrome.css
sed -i.bak "s/$ofg/$fg/gI" $HOME/.mozilla/firefox/*.default-esr/chrome/userChrome.css
sed -i.bak "s/$obg/$bg/gI" $HOME/.mozilla/firefox/*.default-esr/chrome/userContent.css
sed -i.bak "s/$ofg/$fg/gI" $HOME/.mozilla/firefox/*.default-esr/chrome/userContent.css
