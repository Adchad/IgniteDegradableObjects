#!/bin/bash

max_num_threads=5
 
rm -f data_load data_work

for i in $(seq 1 $max_num_threads) ; do
  cd ignite
  bin/ignite.sh ignite.xml >/dev/null 2>&1 & 
  sleep 15
  #bin/control.sh --set-state ACTIVE
  #sleep 10
  cd ..
  echo "avant load"
  load=$(./data_load.sh $i)
  echo "après load"
  work=$(./workload_test.sh $i)
  echo "après work"

  printf "%s,%s\n" $i $load >> data_load
  printf "%s,%s\n" $i $work >> data_work
  printf "%s/%s\n" $i $max_num_threads
  
  pkill -f 'ignite' 
done

