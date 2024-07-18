#!/bin/bash

if [ "$1" == "--float" ]; then
    echo "Floating mode"
    kitty --class 'kitty-float,kitty-float' &
    sleep 0.5
    WINDOW_ID=$(xdotool search --class kitty-float | tail -2)
    echo "Window ID: $WINDOW_ID"
    bspc node "$WINDOW_ID" -t floating
    bspc node "$WINDOW_ID" -g 800x600+100+100
elif [ "$1" == "--full" ]; then
    echo "Fullscreen mode"
    kitty --class 'kitty-fullscreen,kitty-fullscreen' &
    sleep 0.5
    WINDOW_ID=$(xdotool search --class kitty-fullscreen | tail -3)
    echo "Window ID: $WINDOW_ID"
    bspc node "$WINDOW_ID" -t fullscreen
else
    echo "Normal mode"
    kitty ${@}
fi
