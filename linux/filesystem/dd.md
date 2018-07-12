# able to copy a filesystem byte by byte no matter what it's.
convert and copy a file

# some basic options to dd
bs=BLOCKSIZE
    'bs=4M'
    size of each bolck of data being read and written, usually a power
    of 2
count=BLOCKS
    copy only this many blocks of data, rather than the entire file
conv=CONVERSION
    type of conversion to be applied to INFILE data before copying
if=INFILE
    input file; if 'if' not specified, dd reads from stdin.
of=OUTFILE
    output file
seek=BLOCKS
    how many blocks of data to skip in OUTFILE before starting to 
    copy, leaving blank data at beginning of OUTFILE
skip=BLOCKS
    how many blocks of data to skip in INFILE before starting to copy


CONV symbol:
fdatasync   
    physically write output file data before finishing
fsync	
    likewise, but also write metadata.


# e.g.
echo -n "hello vertical world" | dd cbs=1 conv=unblock 2>/dev/null


# device 
find out hardware drive with 'lsblk'
when output file is a device, make sure that it is 'not' mounted.
    dd bs=4M if=some.iso of=/dev/sdx status=progress && sync
the status option reports transfer progress. Do not miss sync to complete
before pulling the USB drive

when I dd a iso into a device, why can't I mount that device while I
can mount the iso ???
