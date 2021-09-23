#source openocdDown.tcl
reset
halt
#HEXPATH=/home/pi/share/hex
#flash write_image erase /home/pi/share/hex/mo.hex
flash write_image erase /home/pi/share/hex/STM32_upMac.hex
#flash write_image erase /home/pi/code/stm32F1code_TT2/build/FPGA_MAKE.hex
#flash write_image erase /home/pi/share/hex/Template.hex
#flash write_image erase /home/pi/share/hex/404_EEDataRead_STM32_407.hex
reset
