#!/bin/bash

echo
tput setaf 3
echo "################################################################"
echo "Set Up Font"
echo "################################################################"
tput sgr0
echo

mkdir -p ~/.local/share/fonts
cp -r /home/cid/dotsnew/font/apple ~/.local/share/fonts
sudo fc-cache -f -v

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo