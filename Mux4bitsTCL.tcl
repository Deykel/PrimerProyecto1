.main clear;

project compileall;


vsim -gui work.Testbenchmux4bits;


add wave -position insertpoint \sim:/Testbenchmux4bits/a;

add wave -position insertpoint \sim:/Testbenchmux4bits/b;

add wave -position insertpoint \sim:/Testbenchmux4bits/c;

add wave -position insertpoint \sim:/Testbenchmux4bits/d;

add wave -position insertpoint \sim:/Testbenchmux4bits/clk;


add wave -position insertpoint \sim:/Testbenchmux4bits/sel;

add wave -position insertpoint \sim:/Testbenchmux4bits/anodos;

add wave -position insertpoint \sim:/Testbenchmux4bits/seg;







config wave -signalnamewidth 1;


run -all;

