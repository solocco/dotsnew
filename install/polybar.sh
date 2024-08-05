#!/bin/bash

echo
tput setaf 3
echo "################################################################"
echo "Set Up polybar"
echo "################################################################"
tput sgr0
echo

sudo dnf install polybar -y

cp -r /home/cid/dotsnew/polybar ~/.config/
cp -r /home/cid/dotsnew/nmd ~/.config/

chmod +x ~/.config/polybar/* &&
chmod +x ~/.config/polybar/scripts/*.sh
chmod +x ~/.config/nmd/* &&

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo