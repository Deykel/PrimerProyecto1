.main clear;

project compileall;


vsim -gui work.Estado7segTESTBench;


add wave -position insertpoint \sim:/Estado7segTESTBench/clk;

add wave -position insertpoint \sim:/Estado7segTESTBench/estado;



add wave -position insertpoint \sim:/Estado7segTESTBench/seg;







config wave -signalnamewidth 1;


run 10000000ns;

