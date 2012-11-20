#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


if [ -f $HOME/.Xdefaults ]; then
	xrdb -merge .Xdefaults
fi

if [ -f $HOME/.Xresources ]; then
	xrdb -merge .Xresources
fi

#if [ -f ~/.Xmodmap ]; then
#    xmodmap ~/.Xmodmap
#fi

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

PATH=$PATH:~/.cabal/bin:~/.xmonad/bin:~/scripts

#xrandr --auto --output DVI-1 --primary --auto --output DVI-0 --auto --left-of DVI-1

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --widthtype pixel --width 100 --transparent true --tint 0x304520 --heighttype pixel --height 16 &

xsetroot -solid black &
xsetroot -cursor_name left_ptr &
#feh --bg-fill '/home/michael/Pictures/Wallpapers/Orion_Nebula_3_by_Eeitam.png' '/home/michael/Pictures/Wallpapers/Milky_by_Eeitam.png' &
xscreensaver -no-splash &
#xrdb ~/.Xresources &
#thunar --daemon &
dropboxd &
volumeicon &
redshift -l 41.662421:-72.797481 &
unclutter &
batti &
amixer -q set Master off

#if [ -x /usr/bin/nm-applet ] ; then
#   (sleep 1; nm-applet --sm-disable &)
#fi 

# exec ck-launch-session dbus-launch --sh-syntax --exit-with-session xmonad
xmonad
