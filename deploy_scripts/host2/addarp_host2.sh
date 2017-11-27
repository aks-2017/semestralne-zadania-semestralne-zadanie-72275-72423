#!/bin/bash

arp -s 10.0.1.1 08:00:27:95:f8:bc -i eth0
arp -s 10.0.1.1 08:00:27:95:f8:bc -i eth1
arp -s 10.0.0.1 08:00:27:5f:ab:7f -i eth0
arp -s 10.0.0.1 08:00:27:5f:ab:7f -i eth1
