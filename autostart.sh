#!/usr/bin/bash

light -S 20 &

xsetroot -cursor_name left_ptr &

feh --no-fehbg --bg-fill $HOME/.config/bspwm/great-wave-of-kanagawa-gruvbox.png &

/home/cid/.config/scripts/picom

# Spawn Statusbar
#~/.dwm/bar &
$HOME/.local/bin/status/dwmstatus &

# polkit agent
if [[ ! `pidof xfce-polkit` ]]; then
	/usr/lib/xfce-polkit/xfce-polkit &
fi
