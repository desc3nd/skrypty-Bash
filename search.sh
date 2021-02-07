#!/bin/bash
#Z1
#wstawiam echo by moc rozroznic linie
mkdir $2
#Z2
find $1 -type f -name "*.txt"
echo ""
#Z3
find $1 -type l
echo ""
#Z4
find $1 -type f -executable -name "*sh"
echo ""
#Z5
find $1 -type d \( -iname "A*" -or -iname "D*" \)
echo ""
#Z6
find $1 -type f -empty -user ubuntu
echo ""
#Z7
find $1 -type f -group ubuntu -size +1M
echo ""
#Z8
find $1 -type f -mmin 60
echo ""
#Z9
find $1 -type d -perm /1000
echo ""
#Z10
find $1 -type f -executable \( -perm u=s -or -perm u=g \)
echo ""
#Z11
find $1 /dev/ \( -type b -or -type c \)
echo ""
#Z12
find $1 -type d -empty -exec rm -rf {} \;
echo ""
#Z13
find $1 -type f -size +10M -exec mv -t ./$2 {} +
echo ""
#Z14
find $1 -type d -name "Z*" -exec cp -r {} $2 \;
