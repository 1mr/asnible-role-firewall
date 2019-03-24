#!/bin/bash

## profptd passive ports


IPTABLES=/sbin/iptables

$IPTABLES -A INPUT -p tcp --dport 60000:61000 -j ACCEPT
