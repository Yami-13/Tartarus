#!/bin/bash

#Will house the ecryption algorithm used with tartar sauce
#Uses variables from apollo.sh

#Algorithm
x=0
while [ x -le 1000 ]
do
  (( m = SRANDOM % 10))
  (( n = SRANDOM % 30 ))
  mu=$(printf '%s.%s\n' $(( n / 10 )) $(( n /10 ))
  mult=$mu
  numSub=$(( $numSub * $mult ))
  x=$(( $x + $m))
  echo $numSub
  echo $x
done
