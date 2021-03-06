vlib work
vmap work work

#Compila o arquivo
vcom -work work primo.vhd
#vcom -work work testbench.vhd

#Simula o arquivo
vsim -t 1ns +notimingchecks work.primo
#vsim -t 1ns +notimingchecks work.testbench