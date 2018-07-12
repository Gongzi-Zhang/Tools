# File manipulation tools: only manipulation the name and attributes of files, but not their contents
basename    : base portion of a pathanme; see also dirname
chcon	    : change file security context (SELinux)
cksum	    : CRC checksum and size
cmp	    : compare two files ==== diff
comm	    : (UNIX) select or reject lines common to two files
	    : (GNU) compares two sorted files line by line
csplit	    : split files based on context; see also split
df	    : report free disk space
dirname	    : directory portion of a pathname; see also basename
file	    : determine file type
find
install	    : cp files and set attributes
locate	    : locate a file 
lp	    : send files to a printer; see also pr
md5sum	    : compute and check MD5 message digest; see also cksum, sha1sum
pathchk	    : check whether file names are valid or portable
readlink    : display value of a symbolic link
realpath    : return the resolved absolute or relative path
shred	    : overwrite  a  file to hide its contents, and optionally delete it
sha1sum	    : compute and check sha1 message digest
sha224sum, sha256sum, sha384sum, sha512sum
stat	    : fle status
sum	    : checksums and counts the blocks in a file
sync	    : flush file system buffers
truncate    : shrink of extend the size of a file to the specified size
unlink	    : call the unlink function; see also link


## filesystem
blkid	    : locate/print block device attributes
df	    : file system disk space usage 
du	    : file space usage
lsblk       : ls block devices
mkfs	    : make filesystem
mkswqp	    : make swap fs
mount	    : mount device to a dir. point
resize2fs   : ext2/3/4 fs resizer
swapon	    : enable a swap fs
umount	    : umount
