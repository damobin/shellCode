#!/bin/bash
if [ $# -eq 0 ];
then
	echo "less args; tell me what soft you will hold or unhold!!!"
	exit
fi
dpkg -l | grep $1
if (whiptail --title $1 --yesno "chosse between yes and no" 10 60) then
	echo "sudo apt-mark hold $1"
	sudo apt-mark hold $1
else
	echo "sudo apt-mark unhold $1"
	sudo apt-mark unhold $1
fi
