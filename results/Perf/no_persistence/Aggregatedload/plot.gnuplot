set title 'Ignite YCSB Benchmark NO PERSISTENCE' 
set datafile separator ','
set ylabel "Throughput"
set xlabel '# Cores' # label for the X axis
set terminal png size 600,500
set output 'plot.png'
plot 'loada' with lines, \
		'loadb' with lines, \
		'loadc' with lines


