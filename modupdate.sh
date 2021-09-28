#!/bin/bash
# This script adds the system update info and then rebuilds the webcam at the end.

# This is a simple script to turn on my webcam on my 2015 MacBook Pro

# This script only works if you have already ran through these steps
# so that the directory "facetimehd-firmware already exists.
#
# The facetimehd-firmware is found on github and is previously installed.
# Also of note is this just runs through the steps to reactivate the
# camera after a kernel update, which seems to kill it on these 
# machines for some reason.
#
# First goto this link and do all these steps to initially rebuild the 
# camera to start with.
# https://github.com/patjak/bcwc_pcie/wiki/Get-Started
#
# This will get the webcam up and running, but when you update the kernel
# it will kill the webcam. Once the above steps have been done, then this
# script will restore the webcam in one simple operation.

sudo apt update

sudo apt upgrade


echo " "
echo " "
echo "Camera Activation Script"
echo " "
echo " "

cd
cd facetimehd-firmware 
make
sudo make install

cd ..
sudo apt-get install kmod libssl-dev checkinstall
git clone https://github.com/patjak/bcwc_pcie.git

cd bcwc_pcie
make
sudo make install
sudo depmod


sudo modprobe -r bdc_pci
#This line currently gives me an error but the camera still works.


sudo modprobe facetimehd

echo " "
echo "Camera Activation Script is finished"
echo " "
exit
