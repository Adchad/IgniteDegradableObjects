set title 'Ignite YCSB Benchmark (step of 1, up to 10 cores)'
set datafile separator ','
set ylabel "Throughput"
set xlabel '# Cores' # label for the X axis
set terminal png size 600,500
set output 'plot.png'
plot 'data_work' with lines


