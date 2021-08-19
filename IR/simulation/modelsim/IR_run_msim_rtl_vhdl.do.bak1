transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/IR/IR.vhd}

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/IR/IR_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  IR_tb

add wave *
view structure
view signals
run -all
