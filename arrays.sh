#!/bin/bash
#Z1
sortowanie () {
tablica=($@)
ilosc=$#
for ((i=1; i<ilosc; i++))
do
	for ((j=$(($ilosc-1)); j>=i; j--))
	do
		if [[ ${tablica[j]} -lt ${tablica[j-1]} ]]
		then
			zmienna=${tablica[j-1]}
			tablica[j-1]=${tablica[j]}
			tablica[j]=$zmienna
		fi
	done
done
echo ${tablica[@]}
}
#sortowanie $@
#Z2
tabliczka () 
{
if [[ $1 -lt 1 ]]
then 
	exit -1
fi
if [[ $2 -lt 1 ]]
then
	exit -1
fi
for (( i=0; i<$1;i++))
do
	for (( j=0; j<$2; j++))
	do
		let tablica1[$i,$j]=$i*$j
		echo -n ${tablica1[$i,$j]}
		echo -n " "
	done
	echo " "
done
}
#tabliczka $1 $2

#Z3
calkowanie ()
{
calka=0
tab=($@)
licz=$#
for ((i=0; i<licz; i++ ))
do
	calka=`echo $calka+${tab[i]} | bc -l`
done
echo $calka
}
calkowanie $@S


