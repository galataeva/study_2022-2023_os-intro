#!/bin/bash

count=$i
end=0
for ((k=1; k<=$1; k++)) do
   if (test -e "$k".txt) then
      rm "$k".txt
      echo "Удален файл" "$k".txt
   else
      touch "$k".txt
      echo "Создан файл" "$k".txt
   fi
   
done
