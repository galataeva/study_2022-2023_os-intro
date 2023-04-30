#!/bin/bash

chars=1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM

for ((k=1; k <= "$1"; k++)) ; do
    echo -n "${chars:RANDOM%${#chars}:1}"
done
echo
