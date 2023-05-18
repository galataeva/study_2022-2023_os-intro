#!/bin/bash

while getopts "i:o:p:Cn" optletter
do case $optletter in
   i) inputfile=$OPTARG;;
   o) outputfile=$OPTARG;;
   p) pattern=$OPTARG;;
   C) symbols=1;;
   n) numbers=1;;
   *) echo "Нет такого флага!"
   esac
done

if (test -n "$inputfile") then 
   if (test -n "$symbols") then 
      if (test -n "$numbers") then 
         grep -n "$pattern" "$inputfile"
         #echo "1"
      else
         grep "$pattern" "$inputfile"
         #echo "2"
      fi
   else
      if (test -n "$numbers") then 
         grep -ni "$pattern" "$inputfile"
         #echo "3"
      else
         grep -i "$pattern" "$inputfile"
         #echo "4"
      fi
   fi
fi   


if (test -n "$outputfile") then 
   if (test -n "$symbols") then 
      if (test -n "$numbers") then 
         grep -n "$pattern" "$inputfile" > "$outputfile"
         #echo "5"
      else
         grep "$pattern" "$inputfile" > "$outputfile"
         #echo "6"
      fi
   else
      if (test -n "$numbers") then 
         grep -ni "$pattern" "$inputfile" > "$outputfile"
         #echo "7"
      else
         grep -i "$pattern" "$inputfile" > "$outputfile"
         #echo "8"
      fi
   fi
fi   
      
