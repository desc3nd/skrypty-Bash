#!/bin/bash
#Z1
file -i ./$1
#Z2
wc -l $1
#Z3
wc -m $1
#Z4
du -h $1
#Z5
grep $2 $1 | wc -l
#inaczej
#grep -c $2 $1
#Z6
grep -v $2 $1 | wc -l
#inaczej
#grep -c -v $2 $1
#Z7
cat $1 | head -n 5 | tail -n 1

