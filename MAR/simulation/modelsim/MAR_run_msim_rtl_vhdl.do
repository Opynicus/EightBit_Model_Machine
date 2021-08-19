transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/MAR/MAR.vhd}

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/MAR/MAR_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  MAR_tb

add wave *
view structure
view signals
run -all
