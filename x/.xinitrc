#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

redshift &
.lemon/install &
hsetroot -tile ~/.wall.png &
xbacklight -set 50 &
compton --backend=glx --vsync=opengl &
sxhkd &
mpd &
mpdscribble &
bar | lemonbar -d -B#161719 -f Tewi:size=9 | mksh &
dunst &
wew | wchg &
wew > ~/.wmlog &
exec xwait
