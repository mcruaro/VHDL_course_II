onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/primo/clock
add wave -noupdate /testbench/primo/reset
add wave -noupdate /testbench/primo/num_valid
add wave -noupdate -radix unsigned /testbench/primo/num_data
add wave -noupdate /testbench/primo/prim_out
add wave -noupdate /testbench/primo/FSM
add wave -noupdate -radix unsigned /testbench/primo/cont
add wave -noupdate /testbench/primo/primo
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1791 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1765 ns} {1914 ns}
