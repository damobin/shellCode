#!/bin/bash
telnet localhost 4444
#after connect exe next cmd
##<<  halt
##<<  flash write_image erase /home/mo/share/hex/Template.hex
##<<  reset


##<<<<<<<<<<<<<<<<<<<<<<<<< 在openocd中执行 tcl文件中写的命令流操作  
##<<  script  "filename"
