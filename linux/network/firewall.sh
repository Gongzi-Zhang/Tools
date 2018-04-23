#!/bin/bash

##############################
# run it as root
##############################

# clean all rules
iptables -FXZ

# create policy
iptables -P INPUT DROP
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

# rules
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -i wlp3s0 -m state --state RELATED,ESTABLISHED -j ACCEPT
# iptables -A INPUT -i wlp3s0 -s 192.168.1.0/24 -j ACCEPT

iptables -A INPUT -p TCP -i wlp3s0 --dport 21 --sport 1024:65534 -j ACCEPT # FTP
iptables -A INPUT -p TCP -i wlp3s0 --dport 22 --sport 1024:65534 -j ACCEPT # SSH
iptables -A INPUT -p TCP -i wlp3s0 --dport 25 --sport 1024:65534 -j ACCEPT # SMTP
iptables -A INPUT -p TCP -i wlp3s0 --dport 53 --sport 1024:65534 -j ACCEPT # DNS
iptables -A INPUT -p UDP -i wlp3s0 --dport 53 --sport 1024:65534 -j ACCEPT # DNS
iptables -A INPUT -p TCP -i wlp3s0 --dport 80 --sport 1024:65534 -j ACCEPT # WWW
iptables -A INPUT -p TCP -i wlp3s0 --dport 110 --sport 1024:65534 -j ACCEPT # POP3
iptables -A INPUT -p TCP -i wlp3s0 --dport 443 --sport 1024:65534 -j ACCEPT # HTTPS
