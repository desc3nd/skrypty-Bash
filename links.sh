#!/bin/bash
#Z1
mkdir ./$1
#Z2
cd $1
mkdir D1
mkdir D2
mkdir D3
mkdir D4
touch D2/F1.txt
touch D3/F1.txt
touch D4/F1.txt
#Z3
cd D1
ls -s /etc/passwd
#Z4
readlink -f passwd
#Z5
cd ..
cd D2
ln /home/ubuntu/Desktop/253063/$1/D3/F1.txt F2.txt
#Z6
chmod 600 F2.txt
#Z7
sudo chown :users F2.txt
cd ..
#Z8
sudo chgrp users ./D3
#Z9
chmod -x ./D3
#Z10
chmod -w ./D2
#Z11
chmod -r ./D4
#Z12
chmod +t ./D4
#Z13
touch ./D1/scr.sh
chmod ug+x ./D1/scr.sh
#14
chmod ug+s ./D1/scr.sh
