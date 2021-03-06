onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/my_exe/clock
add wave -noupdate /testbench/my_exe/reset
add wave -noupdate /testbench/my_exe/P
add wave -noupdate /testbench/my_exe/R
add wave -noupdate /testbench/my_exe/FSM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 119
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ns} {21159 ns}
