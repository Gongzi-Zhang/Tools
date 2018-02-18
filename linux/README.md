# record useful options for frequently-used commands, whose man page is longer than 3 pages.
# or some unusual options usage not recorded in man page.
man --> reference --> GNU website(google)


# Special words: $'string'
*** word of the form $'string' are treated specially. The word expands to string, with
backslash-escaped chars replaced as specified by the ANSI C standard. Backslash escape sequences,
if present, are decoded as follows:
    \a	alert(bell)
    carriage return:	horizontal tab
    \v	vertical tab
    \'  single quote
********

**** which command to choose:

deletion:
    |-- tr

reading:
    |-- pg
    
selection:
    |-- cut (bytes, characters/columns, fields)
    |-- head (lines, bytes)
    |-- tail (lines, bytes)
    |-- awk (fields, lines)
    |-- sed (lines)
    |-- grep (very powerful)

special_charset:
    |-- tr

squeesing-repeat:
    |-- tr
    |-- uniq

substitution(translation):
    |-- sed
    |-- tr
    |-- ex(vim in normal mode)


*********

# to read 
file

What's the difference between new line, return, carrige return?
