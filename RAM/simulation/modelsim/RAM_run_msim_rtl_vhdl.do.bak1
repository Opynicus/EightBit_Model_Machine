transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/RAM/RAM.vhd}

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/RAM/RAM_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  RAM_tb

add wave *
view structure
view signals
run -all
