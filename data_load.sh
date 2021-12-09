#!/bin/bash
cd YCSB
python2 bin/ycsb load ignite -p hosts="127.0.0.1" -s -P workloads/workloadb -threads $1 -p operationcount=100000 -p recordcount=100000 > ../outputload.txt 2>&1

cd ..
printf "\n"
echo | grep "Throughput" outputload.txt | cut -d " " -f 3 

