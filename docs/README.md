Sample execution:

  * Run all three Linux Machines in Virtualbox. Each host machine must be connected to the controller using two internal networks. 
  * Run addarp_host1.sh on Host1 and addarp_host2.sh on Host2
  * Run mininet_scripts/four.py on Controller machine. Can be also ran on Mininet machine but you need to change IP of remote controller. 
  * Run ryu/ryu/app/aks3.py:
  ``` ryu-manager --verbose --observe-links ryu/ryu/app/aks3.py ```
  * Run some tests (iperf -s on Host2, iperf -c 10.0.0.2 -b 100k on Host1. Be careful about the bandwidth. If everything goes well, you should see 4 subflows created in dmesg output. 
