#source openocdDown.tcl
reset
halt
flash write_image erase /home/mo/share/hex/gEEPROM.hex
#flash write_image erase /home/mo/share/hex/Template.hex
#flash write_image erase /home/mo/share/hex/404_EEDataRead_STM32_407.hex
reset
