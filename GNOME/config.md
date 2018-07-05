# config
GNOME 3 uses **dconf** to store the preferences in a single binary file:
~/.config/conf/user. 

To save current seeting for gnome:
>   dconf dump / > dconf
>   dconf load / < dconf


# startup a gui-program
In Launcher:
```
gnome-session-properties    OR startup-application
```
which actually just add a .desktop file under ~/.config/autostart/


# Desktop

## background
~/.cache/gnome-control-center/backgrounds
>   Position for storing wallpapers

## remove trash-icon in desktop
gsettings set org.gnome.nautilus.desktop trash-icon-visible false

## hide docks forever
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false && gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false && gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false
