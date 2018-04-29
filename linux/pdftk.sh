#!/bin/bash

pdftk 1.pdf 2.pdf 3.pdf cat output merged.pdf	
    # merge multiple pdf files into one
pdftk *.pdf cat output merged.pdf   
    # merge pdf files in alphabetical order
pdftk A=1.pdf B=2.pdf cat A B output 12.pdf # using handles
pdftk A=1.pdf B=2.pdf cat A1-8 B1-4 A9 output combined.pdf
    # split select pages from multiple pdfs 
pdftk file.pdf output file.128.pdf owner_pw foopass
    # encrypt a pdf using 128-bit strength and withhold all permissioins
pdftk file.pdf output file.128.pdf owner_pw foopass user_pw baz
    # same as above, except a pw is required to open a pdf
pdftk file.pdf output file.128.pdf owner_pw foopass user_pw baz allow printing
    # same as above, except printing is allowed.
pdftk secured.pdf input_pw foopass output unsecured.pdf
    # decrypt a pdf

