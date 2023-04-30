#!/bin/bash

if (test -n "${1}") then
   file="/usr/share/man/man1/${1}.1.gz"

   if (test -f "$file") then
      less "$file"
   else
      echo "Нет справки"
   fi
else
   echo "Не указана команда"
fi
