#!/bin/bash

echo "Changing macs.."
VBoxManage modifyvm Host1 --macaddress1 0800275FAB7F
VBoxManage modifyvm Host1 --macaddress2 08002795F8BC
VBoxManage modifyvm Host2 --macaddress1 08002777278C
VBoxManage modifyvm Host2 --macaddress2 08002772AEED

echo "Setting up internal networks.." 
VBoxManage modifyvm Host1 --nic1 intnet
VBoxManage modifyvm Host1 --nic2 intnet
VBoxManage modifyvm Host2 --nic1 intnet
VBoxManage modifyvm Host2 --nic2 intnet

VBoxManage modifyvm Host1 --intnet1 'Host1Eth0-ControllerEth0'
VBoxManage modifyvm Host1 --intnet2 'Host1Eth1-ControllerEth1'
VBoxManage modifyvm Host2 --intnet1 'Host2Eth0-ControllerEth3'
VBoxManage modifyvm Host2 --intnet2 'Host2Eth1-ControllerEth4'

VBoxManage modifyvm Controller --intnet1 'Host1Eth0-ControllerEth0'
VBoxManage modifyvm Controller --intnet2 'Host1Eth1-ControllerEth1'
VBoxManage modifyvm Controller --intnet4 'Host2Eth0-ControllerEth3'
VBoxManage modifyvm Controller --intnet5 'Host2Eth1-ControllerEth4'

echo "Setting up promisc mode.."
VBoxManage modifyvm Controller --nicpromisc1 allow-all
VBoxManage modifyvm Controller --nicpromisc2 allow-all
VBoxManage modifyvm Controller --nicpromisc4 allow-all
VBoxManage modifyvm Controller --nicpromisc5 allow-all

echo "Done." 
