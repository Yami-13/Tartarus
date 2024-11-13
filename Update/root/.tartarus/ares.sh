#!/bin/bash

#Uses variables from Apollo
#further scrambles variables before passing to Artemis

#Establishes Keys
startKey=$startKey
endKey=$endKey

#Variable to limit loop
x=0

#Loop changes variables for use within algorithm
while [ $x -le 1000 ]
do

  #Provides random variable for algorithm
  m=$((1 + RANDOM % 33))
  n=$((1 + RANDOM % 10))
  m1=$((1 + RANDOM % 33))
  n1=$((1 + RANDOM % 10))
  y=$((RANDOM % 100))
  
  #Appends new rand variable each cycle
  mult=$m
  div=$n
  mult2=$m1
  div2=$n1
  
  #Begins changing numSub
  numSub=$(( numSub * mult ))
  numSub=$(( numSub / div ))
  
  #Same as above but for numSub1
  numSub1=$(( numSub1 / div2 ))
  numSub1=$(( numSub1 * mult2 ))
  
  #Changes value of x by a random amount
  x=$(( $x + $y ))
  
  #Echoes values for testing
  #echo -e "\nmult:" $mult
  #echo "mult2:" $mult2
  #echo "div:" $div
  #echo "div2:" $div2
  #echo "x:" $x
  #echo "numSub:" $numSub
  #echo -e "numSub1:" $numSub1"\n"
  
  #ends loop
done

#Testing variables values
#echo $startKey
#echo $endKey

#Exporting variables for encryption and decryption to artemis and running artemis
export numSub
export numSub1
export startKey
export endKey
./artemis.sh
