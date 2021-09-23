define init
	target remote localhost:3333
	monitor reset
	monitor halt
	load
	l
	x/8wx 0x40021000
end

define RCC_Regs
	x/8wx 0x40021000
end

define set_args
	b main
	r
end

define all
	init
	set_args
	RCC_Regs
end
