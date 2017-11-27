#!/bin/bash

arp -s 10.0.1.2 08:00:27:72:ae:ed -i eth0
arp -s 10.0.1.2 08:00:27:72:ae:ed -i eth1
arp -s 10.0.0.2 08:00:27:77:27:8c -i eth0
arp -s 10.0.0.2 08:00:27:77:27:8c -i eth1

