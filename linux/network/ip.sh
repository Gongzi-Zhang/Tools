# ip rule
ip rule [ list | add | del | flush ] SELECTOR ACTION

# files
    /etc/iproute2/rt_tables

# e.g.
ip rule list	# list all ip rules
ip rule add fwmark 1 priority 1984 table vpn
    # add all data that has mark 'fwmark'  to table vpn


# ip route
ip route [ add | del | change | append | replace | monitor ] ROUTE

# e.g.
ip route add default dev pptp-VPN table vpn
    # set default gate for table vpn

