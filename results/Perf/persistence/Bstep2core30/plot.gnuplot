set title 'Ignite YCSB Benchmark workload B (step of 2, up to 30 cores)'
set datafile separator ','
set ylabel "Throughput"
set xlabel '# Cores' # label for the X axis
set terminal png size 600,500
set output 'plot.png'
plot 'data_work' with lines  

