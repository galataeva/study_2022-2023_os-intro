#!/bin/bash

if (test -n ${i}) then
   tempfiles=$(find "$1" -maxdepth 1 -type f -ctime -7)
   #echo $tempfiles
   #for file in $tempfiles
   #do
   #echo "$file"
   #done


tar -czvf path_tar.tar.gz $tempfiles



#tar -czvf path_tar.tar.gz "$1"/*

else
   echo "Не указана директория"
fi
