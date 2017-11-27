#!/bin/bash

echo "Setting up Linux MPTCP"
sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 379CE192D401AB61

echo 'deb https://dl.bintray.com/cpaasch/deb jessie main' >> /etc/apt/sources.list

sudo apt-get update
sudo apt-get install linux-mptcp

echo "Now configure your grub to use MPTCP kernel and reboot!"
