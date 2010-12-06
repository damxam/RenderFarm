#!bin/bash

# # XCODE + UNIX DEV MUST BE INSTALLED
# install_ports.sh must be run prior
#
# RUN THIS SCRIPT FROM ROOT
# 
#

HOME=/users/renderadmin


sudo port install scons

sudo port install gtk2

cd $HOME

mkdir /usr/local

export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local

svn co https://ssl.drqueue.org/svn/branches/0.64.x

cd 0.64.x

scons

sudo scons install

cd /

cat $HOME/drq_install/drq_vars.txt>>/etc/profile

cat $HOME/drq_install/mem_vars.txt > /sysctl.conf

mkdir /Volumes/Data/

mkdir /Volumes/Data/manure_pile

