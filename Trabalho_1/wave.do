onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/primo/clock
add wave -noupdate /testbench/primo/reset
add wave -noupdate /testbench/primo/num_valid
add wave -noupdate /testbench/primo/num_data
add wave -noupdate /testbench/primo/prim_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ns} {845 ns}