#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias cfb='vim $HOME/.config/bspwm/bspwmrc' #bspwm
alias cfs='vim $HOME/.config/sxhkd/sxhkdrc' #sxhkd
alias cfsh='vim $HOME/.bashrc' #bash
alias cfpb='vim $HOME/.config/polybar/config' #polybar
alias cfpic='vim $HOME/.config/picom.conf' #picom
alias cfv='vim $HOME/.vimrc' #vim
alias cfx='vim $HOME/.Xresources' #x11
alias cfr='vim $HOME/.config/ranger/rc.conf' #ranger
alias pb='$HOME/.config/polybar/launch.sh'
PS1='\[\e[1;37m\]\W \[\e[32m\]> \[\e[0;37m\]'
#PS1='[\u@\h \W]\$ '

VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR
export TLDR_OS=linux

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
