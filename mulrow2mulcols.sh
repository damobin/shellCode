#!/bin/bash
if [ ! -n "$1" ];then
	echo "input exc file"
	exit -1
else
	cat $1 | xargs -n 16 > $2
fi
