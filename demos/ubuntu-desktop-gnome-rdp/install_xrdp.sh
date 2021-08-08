#!/bin/bash
touch /etc/apt/sources.list
sudo apt-get -y upgrade
sudo apt-get -y update


#install gnome desktop
sudo apt-get install ubuntu-gnome-desktop -y

#install xrdp
sudo apt-get install xrdp -y

# change access from root only to all users
sudo sed -i 's/allowed_users=console/allowed_users=anybody/' /etc/X11/Xwrapper.config

#start remote desktop session
sudo service xrdp restart

logger -t devvm "Success"
exit 0
