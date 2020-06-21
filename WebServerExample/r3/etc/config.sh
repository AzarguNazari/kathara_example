#!/bin/sh
ifconfig eth0 20.20.0.3 netmask 255.255.240.0 broadcast 30.30.0.255 up
ifconfig eth1 50.50.0.3 netmask 255.255.255.128 broadcast 50.50.0.255 up
ifconfig eth2 2.0.0.3 netmask 255.0.0.0 broadcast 2.0.0.255 up
ip route add 10.10.0.0/24 via 20.20.0.1 dev eth0
ip route add 1.0.0.0/8 via 20.20.0.1 dev eth0
