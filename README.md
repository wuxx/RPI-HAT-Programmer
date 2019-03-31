# RPI-HAT-Programmer
* [openocd](#openocd)
* [avrdude](#avrdude)
* [flashrom](#flashrom)
* [eeprog](#eeprog)
* [oled](#oled)
#### openocd ####
	- stm32  
		env.sh  在此处配置芯片所属的平台，如stm32f1x, stm32f2x等，调用其他脚本时，需要先执行一次source ./env.sh用于初始化环境变量，下同。  
		probe.sh  用于探测芯片是否存在  
		attach.sh attach到芯片上，之后可再另一个窗口调用$telnet localhost 4444进行单步调试     
		flash_dump.sh 将芯片中的flash数据dump出来    
		flash_erase.sh 擦除芯片内的flash数据  
		flash_write.sh 烧写芯片内的flash  
		lock.sh stm32系列芯片提供了flash的写保护，打开写保护后无法对芯片进行调试，读取flash数据，产品商用推荐打开写保护功能。
		unlock.sh 取消写保护。
	
	- imx  
	TODO
	- lpc  
	TODO


#### avrdude ####
	- avr
	env.sh 配置芯片型号  
	probe.sh 探测芯片是否已经连接  
	flash_dump.sh 读出flash  
	flash_write.sh 烧写flash  
#### flashrom ####
	probe.sh 探测芯片型号  
	flash_dump.sh 读出flash  
	flash_write.sh 烧写flash  

#### eeprog ####
	env.sh 配置芯片型号，可调用avrdude -p ? 查看当前支持的芯片  
	probe.sh 探测i2c总线  
	flash_dump.sh 读出flash  
	flash_write.sh 烧写flash  
#### oled ####
	扩展板预留出了I2C1，可接入一个OLED进行显示，调用以下命令可对OLED进行测试：
	$python hello.py
	$python logo.py
	$python font_awesome.py
