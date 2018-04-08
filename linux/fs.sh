#!/bin/bash

##################################################
#
# File system
#
##################################################

##### mount/umount ##### 
mount [option] device mount-point
umount [-f] dir.   # force unmount even it's being used.
## options
-a
    mount all fs list in /etc/fstab
-o loop
    specify loop device ???

##### mkfs ##### 
mkfs -v -t [file-system] /dev/<xxxx>	# make fs
mkswap /dev/<xxx>   # make swap partition
/sbin/swapon -v /dev/<xxx>  # enable a swap partition

##### du ##### 
### Find how much disk space a dir. is using

##### df/lsblk ##### 
### df:	Summary of space on filesystems
df -h
### lsblk 
lsblk

##### blkid ##### 
### locate/print block device attributes

##### resize2fs ##### 
### ext2/3/4 fs resizer

