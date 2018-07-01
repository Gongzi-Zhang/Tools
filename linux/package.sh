#!/bin/bash

# package managements

## dpkg 
# installation
dpkg -i DEB_PACKAGE
    # if you come across error due to dependency problems, run:
    sudo apt-get install -f
    # to download the missing dependencies and configure everything.
dpkg -R --install <dir.> 
    # install all .deb packages in this dir.

# remove
dpkg -r PACKAGE_NAME
# Reconfigure
dpkg -reconfigure PACKAGE_NAME
# extract package content
dpkg -x PACKAGE_NAME


# show package info (details)
dpkg -I PACKAGE_NAME
dpkg -p PACKAGE_NAME
# show the content
dpkg -c PACKAGE_NAME
# search which package a file belongs to
dpkg -S /bin/cat
# to see where a package is installed on your Ubuntu
dpkg -L PACKAGE_NAME 
dpkg -l | grep <keyword>    # search for some packages

### files
/var/lib/dpkg

# configuration
sudo debconf-show PACKAGE_NAME


# apt
# source list: /etc/apt/source.list
# to add a source trusty into it like this:
deb https://cran.rstudio.com/bin/linux/ubuntu trusty

## installing soft locally.
apt-get	 source <PACKAGE>
./configure --prefix=$HOME/myapps
make	&& make install

# apt-cache
apt-cache policy torcs

# Dependency
apt-file
    a program contains all the files of each package available in 
    repository.
apt-file update
    download a list of all the availbale packages and all of the
    files those packages contain.
apt-file list
    list all the files in a given package
apt-file search
    search the package contain a specific file. 

# search
apt-cache search <search-term>
    Each package has a name and a description. This command lists
    packages whose anme or description contains <search-term>
dpkg -l <search-term>*
    This will find packages whose names contain <search_term>. 
    Similar to apt-cache search, but also shows whether a package is 
    installed on your system by marking it with ii(installed) and 
    un (not installed).

apt-cache show <package-name>
    show the description of package and other relevant info including
    version, size, dependencies and conflicts.
dpkg --print-avail  <package-name>
    similar to "apt-cache show"

dpkg -L <package-name>
    list files in package
dpkg -c /path/to/foo.deb
    list files in the package foo.deb
dpkg -S <filename-search-pattern>

apt-cache pkgnames
    provide a listing of every package in the system
# files
/var/cache/apt/archives
    to find out packages you have downloaded



# debian file
ar x package.deb
    extract deb file
ar rcs package.deb debina-binary control.tar.gz data.tar.gz
    pack a deb package
