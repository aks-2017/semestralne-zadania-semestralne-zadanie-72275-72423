#!/bin/bash

echo "Setting up Linux MPTCP"
sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 379CE192D401AB61

echo 'deb https://dl.bintray.com/cpaasch/deb jessie main' >> /etc/apt/sources.list

sudo apt-get update
sudo apt-get install linux-mptcp

echo 'Setting up MySQL server'
sudo apt-get install mariadb-server mariadb-client

echo 'Import MySQL database dump.' 
mysql --defaults-file=/etc/mysql/debian.cnf -e "create database mptcp;"
mysql --defaults-file=/etc/mysql/debian.cnf mptcp < mptcp.sql
echo "Now configure your grub to use MPTCP kernel and reboot!"
