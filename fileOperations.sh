#!/bin/bash
funkcja () {
if [[ ! -r $1 ]] # do odczytu
then
	exit -1
fi
if [[ ! -e $2 ]] #czy istnieje
then
	touch $2
else 
	if [[ ! -w $2 ]] # czy ma prawo do zapisu 
	then
		exit -1
	fi
	> $2
fi
if [[ ! -e $3 ]]  # czy istnieje
then
	touch $3
else 
	if [[ ! -w $3 ]] #  czy ma prawo do zapisu 
	then
		exit -1
	fi
	> $3
fi
IFS=$'\n'
myarray=(`cat $1`) 
amound=${#myarray[*]} 
for (( i=0; i<amound; i++))
do
	r=$(($RANDOM%2))
	if [[ $r -eq 1 ]]
	then
		#echo -n $i >> $2 
		#echo -n " " >> $2
		echo  ${myarray[$i]} >> $2  
	else 
		#echo -n $i >> $3
		#echo -n " " >> $3
		echo  ${myarray[$i]} >> $3 
	fi
   
done
}
#funkcja $@
funkcja2 ()
{
if [[ ! -d $1 ]]
then 
	#echo "nie katalog!"
	exit -1	
fi
if [[  ! -w $1 ]]
then 
	exit -1
fi
if [[ ! -r $2 ]] 
then
	exit -1
fi
tablicaD=( `cat $2` )
amoundD=${#tablicaD[*]}
liczbakatalogow=10
cd $1
for (( i=0; i<amoundD; i++))
do	
	mkdir ${tablicaD[$i]}
	cd ${tablicaD[$i]}
	for (( j=0; j<liczbakatalogow; j++ ))
	do
		touch F$j
	done
	cd ..
done

}
funkcja2 $@


