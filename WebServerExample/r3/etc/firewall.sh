#!/bin/sh
# iptables flushing Rules
iptables -t filter -F     
iptables -t filter -X
iptables -t nat -F
iptables -t nat -X

# iptables default DROP rules
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT DROP

#iptables Allow loopback rules
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

#iptables FORWARDING DNS packets
iptables -A FORWARD -i eth0 -o eth2 -p udp --dport 53 -j ACCEPT
iptables -A FORWARD -i eth2 -o eth0 -p udp --sport 53 -j ACCEPT

#iptables ALLOW HTTP packets
iptables -A FORWARD -i eth0 -o eth1 -p tcp --dport 80 -j ACCEPT
iptables -A FORWARD -i eth1 -o eth0 -p tcp --sport 80 -j ACCEPT
