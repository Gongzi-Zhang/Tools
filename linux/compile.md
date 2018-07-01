# Compilation

------
 GCC
------

## header search path
    standard:
    environment variabels:
    options:

    The search path specified by options (such as -B, -I, -L) take 
    precedence over those set by environment variabels, which in turn
    take precedence over those specified by the configuration of GCC.

# compiling software in ubuntu
1: configuring
    -) You always need the -dev package when compiling
    -) For compiling GNOME applications, the package gnome-devel
       is unually required; for KDE applications, use ked-devel.
    -) The names of C and C++ libraries always start with lib, so if
       ./configure complains about missing library foo, you need the 
       libfoo-dev package. 
    -) If a comfigure script asks for "X includes", you should 
       probably install the following packages: xlibs-dev, 
       xlibs-static-dev, x-window-system-dev. Note: sometimes jsut 
       installing xorg-dev and x-dev do the trick.
    -) Try compiling the software disabling the feature which is
       failing using the ./configure -- disable-FEATURE option.
    -) If there is no configure file, but a configure.ac file, 
       chances are that the developer has forgot to create the final
       comfigure. To create it yourself with 'autoconf' package.


-------------
 Running g++
-------------

# Options
-g -ggdb
    produce debug info
-O0
    lowest debug level
-O3	
    Highest debug level
