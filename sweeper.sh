#!/bin/bash

if [ "$1" == "" ]
then

echo "Usage: ./sweeper.sh [network]"

echo "Example: ./sweeper.sh 10.10.10"

else

for x in `seq 1 126`; do

ping -c 1 $1.$x | grep 64

done

fi