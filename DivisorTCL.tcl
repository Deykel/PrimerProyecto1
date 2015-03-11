.main clear;

project compileall;


vsim -gui work.Divisortestbench;


add wave -position insertpoint \sim:/Divisortestbench/clk;

add wave -position insertpoint \sim:/Divisortestbench/clk_out;

config wave -signalnamewidth 1;


run 1000000ns;

