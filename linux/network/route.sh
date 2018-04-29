# route manipulates the kernel's IP routing tables.

# some usual options
-v	    verbose 
-A family   use the specified address family("inet", "inet6")
-n	    number ip
-e	    same format as netstat
-ee	    very long output
-net	    take a net as target
-host	    take a host as target
-F	    kernel routing IP table
-C	    kernel routing cache
del	    delete a route entry
add	    add a route entry
netmask	
gw Gw	    gateway
metric	M

# e.g.

# set default gate
route add default dev pptp-VPN
route del default dev pptp-VPN

# add a route entry, targeted net: 192.168.0.x go through port eth0
route add -net 192.168.0.0  netmask 255.255.255.0   dev eth0
# add(del) a default route
route add(del) 0.0.0.0   gw <Gate-ip>



