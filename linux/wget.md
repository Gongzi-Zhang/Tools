# some important options
-b , --background
    Put to background immediately after startup. 
-e command, --execute command
    Execute command as if it were a part of .wgetrc. 
-o logfile, --output-file=logfile
    logfile
-a logfile, --append-output=logfile
    append output to logfile
-d, --debug
-nv, --no-verbose
    not completely quiet, print out error message
--report-speed=type
    Output bandwidth as type. The only accepted value is bits.

## Download Options
--bind-address=ADDR
    useful for multiple IPs machine
-t number, --tries=number
    default 20, special: 0 or inf
-O file, --output-document=file
    Concatenate all the downloaded documents and write to file
-c, --continue
--no-use-server-timestamps
    Do not use the remote timestamps
--random-wait
    see man page
--user=user, --password=password

## directory options
-nd, --no-directory
    Do not create a hierarchy of dir. when retrieving recursively.
## HTTP options
--default-page=name
    use 'name' as default file name instead of index.html

## Recursive Accept/Reject Options
-r, --recursive
-l depth, --level=depth
    recursive maximum depth level: default 5
--k, --convert-links
    convert links to make local browsing more reliable.
-m, --mirror
    Turn on options suitable for mirroring. equivalent to -r, -N, -l, 
    inf, --no-remove-listing
-p, --page-requisites
    download all the files that are necessary to properly display 
    a given HTML page.
-A acclist, --accept acclist
-R rejlist, --reject rejlist
    Specify comma-separated lists of file name "suffixes" or patterns to 
    accept or reject.
--follow-ftp
    Follow FTP links from HTML documents. Withoud this option, Wget will 
    ignore all the FTP links.
--ignore-case
    Ignore case when matching files and dir.
-H, --span-hosts
    Enable spanning across hosts when doing recursively retrieving
-np, --no-parent
    Do not ever ascend to the parent dir when retrieving recursively.
