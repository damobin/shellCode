#source openocdDown.tcl
reset
halt
flash write_image erase /home/pi/code/FPGA_Test/build/FPGA_MAKE.hex
reset
