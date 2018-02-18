# octal dump
the od filter converts input to octal or other bases. This is useful
for viewing or processing binary data files or otherwise unreadable
system device files, such as /dev/urandom

# hexdump
same as od, performs a hexdecimal, octal, decimal, or ASCII dump of
a binary file.

# objdump
Display info about an object file or binary executable in either
hexadecimal form or as a disassembled listing( with the -d option )
    e.g.
    objdump -d /bin/ls | less
