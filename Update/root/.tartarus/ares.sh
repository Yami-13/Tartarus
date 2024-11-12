#!/bin/bash

#Will house the ecryption algorithm used with tartar sauce
#Uses variables from apollo.sh

#Algorithm
x=0
while [ $x -le 1000 ]
do
  #Provides random variable for algorithm
  (( m = SRANDOM % 33 ))
  (( n = SRANDOM % 33 ))
  (( m1 = SRANDOM % 33 ))
  (( n1 = SRANDOM % 33 ))
  (( y = SRANDOM % 100 ))
  
  #Appends new rand variable each cycle
  mult=$m
  div=$n
  mult2=$m1
  div2=$n1
  
  #Begins changing numSub
  numSub=$(( $numSub * $mult ))
  numSub=$(( $numSub / $div ))
  
  #Same as above but for numSub1
  numSub1=$(( $numSub1 / $div2 ))
  numSub1=$(( $numSub1 * $mult2 ))
  
  #Changes value of x by a random amount
  x=$(( $x + $y ))
  
  #Echoes values for testing
  echo $mult
  echo $mult2
  echo $div
  echo $div2
  echo $x
  echo $numSub
  echo $numSub1
done
