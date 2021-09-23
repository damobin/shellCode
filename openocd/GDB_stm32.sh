#!/bin/bash
echo $0 $1
if [ ! -n "$1" ]; then
	echo "no debug file INPUT!!!!"
else
	arm-none-eabi-gdb $1
fi

