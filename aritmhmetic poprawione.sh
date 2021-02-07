#!/bin/bash
#bardzo przepraszam ale mialem problemy z virtualna maszyna i przez caly okres zajec i po nich.. wielokrotnie resetowalem czesto bez skutku by po x resecie zadzialala na  np 10 min
#to jest plik poprawiony
#Z1
funkcja () {
zmienna=`echo $1+$2 | bc -l`
if [[ $zmienna -eq 0 ]]
then
	exit -1
else
dod=`echo $1+$2 | bc -l`
od=`echo $1-$2 | bc -l`
 wynik=`echo $dod/$od | bc -l`
	echo $wynik
fi
}

funkcja $1 $2
#Z2
rek ()
{
if [ $# -ne 1 ]
then 
	exit -1
fi
if [ $1 -lt 2 ]
then 
	echo 1
      
else
	echo $(($(rek $[$1]) * $(rek $[$1-1])))
fi
}

#rek $1
#Z3
iter () {
wynik=1
if [[ $# -ne 1 ]]
then 
	exit -1
fi
if [[ $1 -lt 2 ]]
then 
	echo 1
	else
for (( i=$1; i>=1 ; i=$i-1)); 
do
wynik=`echo $wynik*$i | bc -l`	
done
    echo $wynik
fi
  
}
iter $1
#Z4
suma () {
tablica=$@
sum=0
for value in $tablica
do 
let sum=$sum+$value
done 
echo $sum
}
suma $1 $2 $3
