#!/bin/bash

path=$1
shift

for format 
do
   count=0
   for file in ${path}/*.${format}
   do
     #echo ${file}
     if (test -f ${file})
     then let count=count+1
     fi
   done
   #printf "\n"
   echo "В каталоге" ${path} ${count} "файлов с типом" ${format}
done   
   

