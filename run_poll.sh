#!/bin/bash

max_num_threads=5
 
rm poll_data

for i in $(seq 1 $max_num_threads) ; do
  cd ignite
  bin/ignite.sh ignite.xml > ../ignite_log 2>&1 & 
  sleep 5
  #bin/control.sh --set-state ACTIVE
  #sleep 10
  cd ..
  echo "avant load"
  load=$(./data_load.sh $i)
  echo "après load"

  kill -s SIGHUP $(ps -ef | grep -E "java.*ignite|ignite.*java" | head -n 1 | cut -d " " -f "8" )

  nb_exec=$(grep "Nombre d'executions de poll" ignite_log | cut -d ":" -f 2)
  temps_total=$(grep "Temps total dans poll" ignite_log | cut -d ":" -f 2)
		
  printf "%s,%s,%s,%s\n" $i $nb_exec $temps_total $load >> poll_data
  
  pkill -f 'ignite' 
done

