# record useful options for frequently-used commands, whose man page is longer than 3 pages.
# or some unusual options usage not recorded in man page.
man --> reference --> GNU website(google)


# Special words: $'string'
word of the form $'string' are treated specially. The word expands to string, with
backslash-escaped chars replaced as specified by the ANSI C standard. Backslash escape sequences,
if present, are decoded as follows:
    \a	alert(bell)
    carriage return:	horizontal tab
    \v	vertical tab
    \'  single quote


# URL	http://www.linfo.org/ (The Linux Information Project)
# concept
##  Standard streams of data
* Linux features this concept of standard streams of data.Each program,
and therefore each process, is automatically innitialized with "three"
data streams: one input stream("stdin"), two output streams("stdout" and "stderr"), which all consists of data in plain text. 

* Standard Input: (stdin), is the source of input data for command line programs in Linux.
-- stdin end with "CTRL-d" in newline.



# unix philosophy
Modularity  -- design programs to do only a single thing, but to do it well
Compostion -- and to work together well with other programs
Silence	-- a program should, by default, say nothing other than that which is interesting, unusual or surprising.
Using plain text -- to be more easier to use, to set, and to interface.
Free --	not only monetary, but also usage.
