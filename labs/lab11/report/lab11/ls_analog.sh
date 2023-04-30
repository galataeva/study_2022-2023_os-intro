#!/bin/bash

echo "Всего в каталоге:"
for i in *
do 
   if (test -d "$i"); then
      echo "Каталог: $i"
   else 
      echo "Файл: $i"
   fi
   
   if (test -r "$i"); then
      echo "доступен для чтения"
   fi
 
   if (test -w "$i"); then
      echo "доступен для записи"
   fi  

   if (test -x "$i"); then
      echo "доступен для выполнения"
   fi 
printf "\n"
done
   
