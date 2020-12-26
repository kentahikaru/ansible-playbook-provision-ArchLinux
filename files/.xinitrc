#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# exec gnome-session
# exec startkde
 exec startxfce4
# ...or the Window Manager of your choice

#devilspie &
export GTK_IM_MODULE='uim'
uim-xim &
export XMODIFIERS='@im-uim'
uim-toolbar-gtk &
#xrandr --output DVI-D-0 --left-of HDMI-0
#redshift -c ~/.config/redshift/config &
#redshift 
#ssh-agent bash
