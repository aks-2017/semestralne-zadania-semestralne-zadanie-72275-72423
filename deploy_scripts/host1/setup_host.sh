#!/bin/bash

echo "Setting up Linux MPTCP"
sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 379CE192D401AB61

echo 'deb https://dl.bintray.com/cpaasch/deb jessie main' >> /etc/apt/sources.list

sudo apt-get install apt-transport-https net-tools
sudo apt-get update
sudo apt-get install linux-mptcp

echo "Copying grub config file"
cp grub /etc/default/

echo "Generating grub config"
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "Now reboot!"

