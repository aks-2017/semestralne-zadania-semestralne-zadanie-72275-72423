# Exploiting path diversity in datacenters using MPTCP-aware SDN 

An implementation of MPTCP-aware SDN controller programmed in RYU. 

What do you need: 

 * VirtualBox
 * 2 virtual Linux machines running MPTCP kernel version 0.93
 * Linux machine used as a SDN controller 
 * Ryu 4.18
 * Mininet 2.2.2
 * Openvswitch 2.8.1

Documentation: 

```docs/```

Mininet scripts:

```mininet_scripts/four_switches.py```             - creating four paths between hosts
```mininet_scripts/one_switch.py```                - one switch connected to hosts

Ryu + scripts used in our implementation:

```ryu/ryu/app/aks3.py```                           - deterministic adding paths to subflows
```ryu/ryu/app/shortest_path_forwarding_13.py```    - random approach

Misc scripts:

```misc_scripts/mptcp.sql```                        - dump of MySQL database, need to be imported into MySQL server before running the program
```misc_scripts/addarp.sh```                        - add static ARP entries





