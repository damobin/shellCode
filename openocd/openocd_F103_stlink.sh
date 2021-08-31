#!/bin/bash
sudo chmod -R 777 /dev/bus/usb/
FILEPATH=/home/pi/soft/openocd/install
#openocd -f ${FILEPATH}/share/openocd/scripts/interface/jlink_swd.cfg -f ${FILEPATH}/share/openocd/scripts/target/stm32f1x.cfg
openocd -f ${FILEPATH}/share/openocd/scripts/interface/stlink-v2.cfg -f ${FILEPATH}/share/openocd/scripts/target/stm32f1x_stlink.cfg
