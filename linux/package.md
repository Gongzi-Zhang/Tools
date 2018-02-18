# package managements

# alien
convert some RPM packages into .deb package
## dpkg 
# installation
dpkg -i DEB_PACKAGE
    if you come across error due to dependency problems, run:
	sudo apt-get install -f
    to download the missing dependencies and configure everything.
dpkg -R --install /home/Soft/	## install all .deb packages in this dir.
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

### files
/var/lib/dpkg

# configuration
sudo debconf-show PACKAGE_NAME
