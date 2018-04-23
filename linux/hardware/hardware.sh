# Hardware
lspci	# ls all pci device
lspci | grep -i net 
    # find out all net cards
    # lspci only give out hardware info, but not hardware's interface 
    # within the OS.
ls /sys/class/net   
    # this is usually what we want: internet interface name
dmesg | grep -i enp4s0
    # find out the kernal driver module supporting some hardware
lsmod | grep [module]
modinf [module]
    # find out more info about a module
