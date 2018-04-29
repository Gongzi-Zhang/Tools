
# Options
-t: by default, iptables will work on table 'filter', to operate other tables, use option -t.
    iptables -t mangle
-I: insert a rule (if not specified rule number, insert in the head of the chain: highest priority)
-A: append a rule (if not specified rule number, append in the tail of the chain: lowest priority)
-D: delete a rule (if not specified rule number, delete the first one (0))
-m: module
-j: action
-L: list 
-F: flush, clear all rules in a chain

# e.g.
* iptables -t mangle -I PREROUTING -p udp --sport 53 -m u32 --u32 "0&0x0F000000=0 x05000000 && 
22&0xFFFF@16=0xD35E4293, 0xD5A9FB23, 0xD8DDBCB6, 0xD8EAB30D, 0xF3B9BB27, 0x253D369E, 0x042442B2, 0x2E52AE44,
0x3B1803AD, 0x402158A1" -j DROP
>   drop all packages from port 53 (DNS) of these specified IPs (Hexadecimal) using udp protocle.

* iptables -t mangle -I PREROUTING -p udp --sport 53 -m string --algo bm --hex -string "|FD9D0EA5|" --from
60 --to 180 -j DROP
>   while u32 module is unflexible, we can use more powerful string module to deal with unfixed ip position.
