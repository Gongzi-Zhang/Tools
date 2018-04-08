# ctags
another similar program "etags" is used to create a tag table file, in
a format understood by emacs.

language: [c], objective c, [c++], java, fortran, ada, cobol, erlang,
forth, [html], [latex], emacs lisp/common lisp, lua, [makefile], pascal
perl, [php], postscript, [python], prolog, scheme and most 
assembler-like syntaxes. 

# some often used options
-a, --append[=yes|no]
-f tagfile
    save output tag file to tagfile, "-" refer to stdout.
-u, --sort=no
    Unsorted
-L file
    Read from file a list of file names for which tags should be 
    generated.
--exclude=[pattern]
    Add pattern to a list of excluded files and dirs.
--<LANG>-kinds=[+|-]kinds
    Specifies a list of language-specific kinds of tags to include in
    the output file for a particular language.
    i.e. to include only tags for functions, use
	--c-kings=f
--regex=regexp
    make tags based on regexp matching for the files following the 
    option. The regexp are of one of the forms:
	[{language}]/tagregexp/nameregexp/modifiers
	@regexfile    

    The modifiers are a sequence of 0 or more chars among: 
    --i	    ignore case
    --m	    make "tagregexp" matched against the whole file contents at
	    once, rather than line by line, and the matching sequence 
	    can match multiple lines;
    --s	    implies "m", and means that the dot char in "tagregexp" 
	    matches the newline cahr as well.
    The separator, which is "/" in the examples, can be any chars  
    different from space, tab, braces and @. if the separator itself
    is needed inside the regexp, it must be quoted by preceding it with
    "\".
    The otpional {language} prefix means that tag should be created 
    only for files of language "language", and ignored otherwise.
    The second form, regexfile is the name of a file that contains a 
    number  of arguments to the --regex= option, one per line. Lines
    beginning with a space or tab are assumed to be comments, and 
    ignored.

-R, --recursive
    create tags file searching a whole direcotry tree.
   
