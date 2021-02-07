#!/bin/bash
#Z1
mkdir ./$1
#Z2
grep $(whoami) /etc/passwd
#Z3
cd $1
cat /etc/passwd | cut -d ':' -f 1,6,7 | sort -rk1 > F1.csv
#Z4
cat /etc/passwd | cut -d ':' -f 7 | rev | sort | rev | uniq > F2.csv
#Z5
cat /etc/passwd | cut -d ':' -f 1 | tr a-z A-Z > F3.txt
#Z6
grep -A 4 -B 4 $(whoami) /etc/passwd > F4.txt
#inaczej :
#cat /etc/passwd | grep -A 4 -B4 $(whoami) /etc/passwd > F4.txt
#Z7
diff -y /etc/passwd F4.txt > differences.txt

