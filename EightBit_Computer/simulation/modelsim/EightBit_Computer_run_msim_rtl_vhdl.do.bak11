transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/eightbit_computer.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/clk_generator.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/counter.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/ctrl.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/alu.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/acc.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/dr.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/pc.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/mar.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/ir.vhd}
vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/ram.vhd}

vcom -93 -work work {C:/Users/ZTL/Desktop/model_computer/EightBit_Computer/EightBit_Computer_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  EightBit_Computer_tb

add wave *
view structure
view signals
run -all
