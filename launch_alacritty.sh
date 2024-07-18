#!/bin/bash

CONFIG="$HOME/.config/alacritty/alacritty.toml"  # Replace with your actual config file path if different

if [ "$1" == "--float" ]; then
    alacritty --class 'alacritty-float,alacritty-float' --config-file "$CONFIG"
elif [ "$1" == "--full" ]; then
    alacritty --class 'alacritty-fullscreen,alacritty-fullscreen' --config-file "$CONFIG" \
              -o window.startup_mode="'Fullscreen'" \
              window.padding.x=30 window.padding.y=30 \
              window.opacity=0.95 font.size=14
else
    alacritty --config-file "$CONFIG" ${@}
fi
