#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

configure
set interfaces ethernet eth0 address 30.30.0.2/16
set interfaces ethernet eth1 address 40.40.0.2/24
set interfaces ethernet eth2 address 10.0.10.2/24

set protocols static route 10.10.0.0/24 next-hop 30.30.0.1
set protocols static route 50.50.0.0/25 next-hop 30.30.0.1
set protocols static route 2.0.0.0/8 next-hop 30.30.0.1

set nat source rule 100 outbound-interface eth1
set nat source rule 100 translation address masquerade
commit
