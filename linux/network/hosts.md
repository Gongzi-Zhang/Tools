# hosts command
## host in localnet
The **hosts** program uses *libresolv* to perform a DNS query directly, 
which does not use the *gethostbyname* system call. While most programs
when attempting to connect to another host, will invoke the 
*gethostbyname* system call, which depends on the configuration of 
/etc/nsswitch.conf, will usually first query /etc/hosts, then fall 
back to DNS queries.
If you want to perform a host lookup this way, you can invoke it with 
command:
>   $ getent hosts raspberrypi.local

# Local host
127.0.0.1   localhost localhost.localdomain zhangweibin
::1	    ip6-localhost ip6-loopback
