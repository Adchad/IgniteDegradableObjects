set title 'Ignite YCSB Benchmark (step of 1, up to 30 cores)'
set datafile separator ','
set ylabel "Throughput"
set xlabel '# Cores' # label for the X axis
set terminal png size 600,500
set output 'plotload.png'
plot 'data_load' with lines


