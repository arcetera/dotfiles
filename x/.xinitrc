#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login
xss-lock -- i3lock -c 181818 &
syndaemon -i 0.5 -d &
unclutter &
urxvt -e tmux &
redshift &
feh --bg-fill /home/arc/pictures/newwp.jpg --bg-fill /home/arc/pictures/newwp.jpg &
xbacklight -set 50 &
compton -cGb --backend=glx --vsync=opengl &
dunst &
dropbox &
sxhkd &
/home/arc/.local/bin/shit.sh | lemonbar -B#2b303b -d -f "inconsolata:size=10" &
tail -f /tmp/grp/.fifo | lemonbar -B#2b303b -d -f "inconsolata:size=10" -g 500 &
exec swm
