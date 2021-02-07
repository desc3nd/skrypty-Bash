#!/bin/bash
#Z2.1
mkdir ./$2
#Z2.2
cp -r $1 $2
#Z2.3
cd $2
#Z2.4
ls
#Z2.5
tree -st
#Z2.6
pwd
#Z2.7
cd ../
#Z2.8
rm -r ./$2
