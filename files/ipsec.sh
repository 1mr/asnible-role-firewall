#!/bin/bash

## ipsec ports


IPTABLES=/sbin/iptables

$IPTABLES -A INPUT -p udp --dport 500 -j ACCEPT
$IPTABLES -A INPUT -p udp --dport 4500 -j ACCEPT
$IPTABLES -A INPUT -p esp -j ACCEPT
$IPTABLES -t nat -I POSTROUTING -m policy --pol ipsec --dir out -j ACCEPT
