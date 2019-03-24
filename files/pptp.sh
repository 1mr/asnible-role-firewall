#!/bin/bash

## pptp ports


IPTABLES=/sbin/iptables

$IPTABLES -A INPUT -p tcp --dport 1723 -j ACCEPT
$IPTABLES -A INPUT -p gre -j ACCEPT
