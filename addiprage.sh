#!/bin/bash

# need root user run this script.

echo "running:(route add -net $1 gw 192.168.13.199)"

route add -net $1 gw 192.168.13.199

echo "write to file:(ip-up.local)"
rt1="\$5"
echo "route add -net $1 gw $rt1"  >> /etc/ppp/ip-up.local

echo "write to file:(ip-up.xl2tp)"
rt2="\$4"
echo "route add -net $1 gw $rt2" >> /etc/ppp/ip-up.xl2tp

echo "$1" >> /home/michael/homeroute/iplist.txt
