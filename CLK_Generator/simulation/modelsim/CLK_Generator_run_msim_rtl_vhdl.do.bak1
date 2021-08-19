transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/CLK_Generator/CLK_Generator.vhd}

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/CLK_Generator/CLK_Generator_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  CLK_Generator_tb

add wave *
view structure
view signals
run -all
