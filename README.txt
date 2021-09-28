The first thing that needs to happen though is go see patjak on github and do his initial steps to build the drivers to get your camera working to start with. Here is the link:

https://github.com/patjak/bcwc_pcie/wiki/Get-Started#firmware-extraction

I got the basis for my script from stono on github here:

https://gist.github.com/Stono/990ea9f0b3c41606c292f00382d421bf

He puts his script in the etc area and it is supposed to work automatically from there, but I coldnt get it to work for me like that. So I wrote a few changes to it and made it do three tasks at once for me instead.

This script will go get your updates, then install them (if the kernel is updated, it will kill the webcam on my 2015 MacBook Pro) it will rebuild the webcam drivers post kernel update and get your webcam running automatically. At least it does for me. 

The script gives me the error: 

modprobe: FATAL: Module bdc_pci not found.

So I am learning what this error is and why it is doing it now. Even with this error, the webcam works as it should. So I am tolerant of this error for now. If the webcam stops working for some reason, you can run this script and pull updates like normal or you can comment out the update and upgrade part in Vim or Nano and just rebuild the drivers, that works too.

I like that it does the update and then rebuilds the driver all in one operation, also since a bunch of it happens under root user level powers, you only have to enter the root (sudo) password once this way.

