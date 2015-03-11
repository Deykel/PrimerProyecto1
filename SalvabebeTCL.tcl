.main clear;

project compileall;


vsim -gui work.TESTBENCHsalvabebe;


add wave -position insertpoint \sim:/TESTBENCHsalvabebe/temp;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/presencia;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/puerta;


add wave -position insertpoint \sim:/TESTBENCHsalvabebe/en;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/clk;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/reset;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/anodos;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/seg;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/aaviso;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/vent;

add wave -position insertpoint \sim:/TESTBENCHsalvabebe/alarma;






config wave -signalnamewidth 1;


run -all;
