#!/bin/bash

echo
tput setaf 3
echo "################################################################"
echo "Set Up BSPWM"
echo "################################################################"
tput sgr0
echo

#sudo dnf install bspwm sxhkd -y
sudo apt install bspwm sxhkd -y

cp -r /home/cid/dotsnew/bspwm ~/.config/
cp -r /home/cid/dotsnew/sxhkd ~/.config/
cp -r /home/cid/dotsnew/scripts ~/.config/
chmod +x ~/.config/bspwm/* &&
chmod +x ~/.config/scripts/* &&

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo