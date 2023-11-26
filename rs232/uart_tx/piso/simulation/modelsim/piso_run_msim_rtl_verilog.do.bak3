transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/ailr16/Documents/GitHub/IPCores/rs232/uart_tx/piso {/home/ailr16/Documents/GitHub/IPCores/rs232/uart_tx/piso/piso.v}

vlog -vlog01compat -work work +incdir+/home/ailr16/Documents/GitHub/IPCores/rs232/uart_tx/piso {/home/ailr16/Documents/GitHub/IPCores/rs232/uart_tx/piso/piso_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  piso_tb

add wave *
view structure
view signals
run -all
