#!/bin/bash

sysctl net.ipv4.ip_forward=1  
iptables -A FORWARD -i eth0 -o tun0 -j ACCEPT 
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT 
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE  

nohup /root/watchdog.sh
