q#!/bin/bash

echo
tput setaf 3
echo "################################################################"
echo "Set Up Alacritty"
echo "################################################################"
tput sgr0
echo

#sudo dnf install alacritty -y
cp -r /home/cid/dotsnew/alacritty ~/.config/

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo