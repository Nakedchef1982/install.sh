#!/bin/bash

# KG_Service Installscript 4 Linux
# by Markus Wendler

# install all needing packages
# install 32bit lib's for TK-Suite
sudo add-apt-repository "deb http://downloads.hipchat.com/linux/apt stable main"
sudo wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install python-pip wireshark lib32stdc++6 libx11-6:i386 libxrender1:i386 fontconfig:i386 libxext6:i386 libglib2.0-0:i386 libsm6:i386 ssh samba terminator keepassx rapidsvn geany chromium-browser unrar nmap zenmap nodejs android-tools-adb git ettercap-graphical vlc gparted gnuplot hipchat vncviewer x11vnc 
sudo apt-get dist-upgrade
exit

# a plyce for optional missing python modules
pip install requests

# clear apt-*
sudo apt-get autoremove
sudo apt-get autoclean

# check out git stuff
cd ~/
git clone https://scm.kiwigrid.com/git/kgManagerTools
git clone https://scm.kiwigrid.com/git/sandbox/QualityTools

# downloading important programs
cd ~/Downloads
mkdir install_tmp
cd install_tmp
echo -e "Loading Agfeo telephone suite:\n"
wget ftp://ftp.agfeo.de/pub/software/suite_client_linux-x86.tgz
#tar -zxvf suite_client_linux-x86.tgz
#cd tksuite_client_agfeo_*
#sudo cp tksuite_client /opt/
echo -e "Try to loading Skype (4.3.0.37) client:\n"
wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
echo -e "Try to loading TOR Browser (5.0.2):\n"
wget https://www.torproject.org/dist/torbrowser/5.0.2/tor-browser-linux64-5.0.2_de.tar.xz
