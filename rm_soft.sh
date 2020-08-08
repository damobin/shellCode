#!/bin/bash
if [ $# -eq 0 ];
then
	echo "less args; tell me what soft you will remove!!!"
	exit
fi
dpkg -l | grep $1
echo "sudo apt-get --purge remove \"$1\""
if (whiptail --title "Test" --yesno "chosse between yes and no" 10 60) then
	sudo apt-get --purge remove "$1"
else
	echo "end and exit"
fi

