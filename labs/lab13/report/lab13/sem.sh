#!/bin/bash

t1=$1
t2=$2
res_file='res_file.lock'

while true 
do
   while (test -f "$res_file")
   do 
      echo "Процесс ждет освобождения ресурса" $t1 "секунд"
      sleep $t1
      
      echo "Процесс занимает ресурс" $t2 "секунд."
      sleep $t2

      echo "Процесс освободил ресурс."
      rm "$res_file"
      sleep 1
   done
   
   echo "Процесс занял ресурс."
   touch "$res_file"
   sleep 1

done








