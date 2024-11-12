#!/bin/bash

#Will house the ecryption algorithm used with tartar sauce
#Uses variables from apollo.sh

#Algorithm
sKey=$sKey
eKey=$eKey

x=0
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
  echo -e "\nmult:" $mult
  echo "mult2:" $mult2
  echo "div:" $div
  echo "div2:" $div2
  echo "x:" $x
  echo "numSub:" $numSub
  echo -e "numSub1:" $numSub1"\n"
done
