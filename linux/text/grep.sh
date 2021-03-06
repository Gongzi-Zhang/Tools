info grep   # for complete infromation
# syntax
grep [OPTIONS] pattern [file...]
# important options

## Regular expression
In basic REG, the meta-chars ?, +, {, |, (, ), } lose their special meaning; instead use the backslashed versions: \?, \+, \{, \|, \(, \), \}
While extended (grep -E) support this meta-chars without backslash

## Matching control
-e pattern, --regexp=patterni
    Regular expression search pattern
-f file... --file=Filei
    Input files
-i, --ignore-case 
    Ignore case distinctions in both the /pattern/ and the input files
-v, --invert-match	
    Invert the sense of matching, to select non-matching lines
-w, --word-regexp
    Match only those lines containing matches that form whole words
-x, --line-regexp	
    Match only those lines that exactly match the whole line

## General output control
-c, --count
    Count matching lines rather than print them one by one
-L, --files-without-match
-l, --files-with-matches
-q, --quiet, --silent
-s, --no-messages

## Output line prefix control
-H, --with-filename
    Default for multi files
-h, --no-filename
    Default for only one file
--label=LABEL
    Display input actually coming from standard input as input coming from file LABEL, i.e.
	gzip -cd foo.gz	| grep --label=foo -H pattern
-n, --line-number
-T, --initial-tab
    Align output

## Context line control
-A NUM, --after-context=NUM
-B NUM, --before-context=NUM

## File and Directory Control
-D ACTION, --devices=ACTION
    If an input file is a device, FIFO or socket, use ACTION to process
    it. ACTION can be read(default), skip
-d ACTION, --directories=ACTION
    ACTION for input directory, ACTION can be read(default), skip, recurse(read all files under each subdirectory recursively)
--exclude=GLOB
    Skip files whose base name matches GLOB(using wildcard matching).
--exclude-from=FILE
    Skip files whose base name matches any of the file-name globs read from FILE
--exclude-dir=DIR
    Exclude directories matching the pattern "DIR" from recursive searches
--include=GLOB
    Search onlu files whose base name matches GLOB(wildcard)
-r, --recursive
    Read all files under each subdirectory recursively, following symbolic links only if they are on the command line
-R, --dereference-recursive
    Read all files under each directory, recursively. Following all symbolic links, unlike -r



# examples
grep 'w..i....n' file
    find such word as w is the first letter, i the forth, and n the 
    ninth letter in file 
grep -E 'cron|bash' file    # grep A or B

# remove all the files xecept one
ls | grep -v file.txt | xargs rm
ls | grep -v file.txt | parallel rm
