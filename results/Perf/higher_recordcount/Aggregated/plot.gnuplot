set title 'Ignite YCSB Benchmark NO PERSISTENCE HIGHER RECORDCOUNT' 
set datafile separator ','
set ylabel "Throughput"
set xlabel '# Cores' # label for the X axis
set terminal png size 600,500
set output 'plot.png'
plot 'workload_a' with lines, \
		'workload_b' with lines, \
		'workload_c' with lines


