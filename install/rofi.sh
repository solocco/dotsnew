#!/bin/bash

echo
tput setaf 3
echo "################################################################"
echo "Set Up rofi dunst picom"
echo "################################################################"
tput sgr0
echo

sudo dnf install rofi picom dunst -y
cp -r /home/cid/dotsnew/rofi ~/.config/
cp -r /home/cid/dotsnew/dunst ~/.config/
cp -r /home/cid/dotsnew/picom ~/.config/

chmod +x ~/.config/rofi/* &&

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
