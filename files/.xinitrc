#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

#export GTK_IM_MODULE='uim'
#export QT_IM_MODULE='uim'
#uim-xim &
#export XMODIFIERS='@im=uim'


# exec gnome-session
# exec startkde
 exec startxfce4
# ...or the Window Manager of your choice

#devilspie &

#uim-xim &
#uim-toolbar-qt5 &
ibus-daemon -rxRd &

#xrandr --output DVI-D-0 --left-of HDMI-0
#redshift -c ~/.config/redshift/config &
#redshift 
#ssh-agent bash
