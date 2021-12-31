# RPI-HAT-Programmer
* [openocd](#openocd)
* [avrdude](#avrdude)
* [flashrom](#flashrom)
* [eeprog](#eeprog)
* [oled](#oled)

![top](https://github.com/wuxx/RPI-HAT-Programmer/blob/master/doc/top.png)

#### openocd ####
	- stm32  
		env.sh  first need to edit this file to config the platform, then type `. ./env.sh` to export  
		probe.sh  probe the chip  
		attach.sh attach to the chip, then you can use `telnet localhost 4444` to debug
		flash_dump.sh dump the flash data  
		flash_erase.sh erase the total flash  
		flash_write.sh program the flash  
		lock.sh lock the flash, do the read protect  
		unlock.sh unlock the flash  
	- imx  
	TODO
	- lpc  
	TODO


#### avrdude ####
	- avr
		env.sh config the chip
		probe.sh probe
		flash_dump.sh dump flash
		flash_write.sh program flash
#### flashrom ####
	probe.sh 
	flash_dump.sh 
	flash_write.sh 

#### eeprog ####
	env.sh 
	probe.sh
	eeprom_dump.sh 
	eeprom_write.sh
#### oled ####
	plug a SSD1306 OLED into I2C1 to test:  
	$python hello.py
	$python logo.py
	$python font_awesome.py
