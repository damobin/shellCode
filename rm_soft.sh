#!/bin/bash
if [ $# -eq 0 ];
then
	echo "less args; tell me what soft you will remove!!!"
	exit
fi
dpkg -l | grep $1
if (whiptail --title "Test" --yesno "chosse between yes and no" 10 60) then
	echo "sudo apt-get --purge remove \"$1\""
	sudo apt-get --purge remove "$1"
	echo "sudo apt-get --purge autoremove \"$1\""
	sudo apt-get --purge autoremove "$1"
	echo "sudo apt-get autoclean"
	sudo apt-get autoclean
	echo "sudo dpkg -l |grep ^rc|awk ‘{print $2}’ |sudo xargs dpkg -P"
	sudo dpkg -l |grep ^rc|awk ‘{print $2}’ |sudo xargs dpkg -P
else
	echo "end and exit"
fi

