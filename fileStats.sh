#!/bin/bash
#Z1
funkcja () {
if [[ ! -e $1 ]] #czy istnieje
then
	exit -1
fi
if [[ ! -r $1 ]] # do odczytu
then
	exit -1
fi
if [[ ! -e $2 ]] #czy istnieje
then
	touch $2 
else 
>$2
	if [[ ! -r $1 ]] #do oczytu
	then
		exit -1
	fi
fi
declare -A tablica #deklaracja tablicy asocjacyjnej
myarray=(`cat $1`) 
amound=${#myarray[*]}
for ((i=0; i<$amound; i++))
do
var=${myarray[$i]}
if [[ tablica[${myarray[$i]}] -ne 0 ]]
then
	:
else
	tablica[${myarray[$i]}]=`grep -o $var < $1 | wc -w` 
fi 
done 
zmienna=$( 
for k in ${!tablica[@]}
do
	echo $k ${tablica[$k]}
done | sort -k2,2 -rn
)
for k in $zmienna
do
echo $k ${tablica[$k]} >> $2 
done
}
funkcja $@
