#!/bin/bash
FILEPATH=/home/pi/soft/openocd/install
openocd -f ${FILEPATH}/share/openocd/scripts/interface/jlink_swd.cfg -f ${FILEPATH}/share/openocd/scripts/target/stm32f4x.cfg
