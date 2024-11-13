#!/bin/bash

#Chooses keys for use when encrypting and decryption.
#Passes to Ares for further changing of variables.
#Variables persist to Artemis for encryption.

#Declares array for potential key variables
declare -a Key

#Lists all possible key variables.
Key=("Prometheus" "Hades" "Nyx" "Thanatos" "Fates" "Persephone" "Thanatos" "Moros" "Styx" "Chronos" "Hermes")

echo "${Key[@]}"

#Assigns random number for key variable selection.
ran=$((SRANDOM % 10))

#Assigns key value to sKey and eKey
echo $ran

sKey=$(echo "${Key[$ran]}")

ran2=$((SRANDOM % 10))

eKey=$(echo "${Key[$ran2]}")

#assigns string value to startKey and endKey
startKey=$sKey

endKey=$eKey

echo $startKey

echo $endKey

#Appends length of variables to e and d
e=${#startKey}
d=${#endKey}

echo $e
echo $d

#creates num variables used throughout the loops
num=0
num2=1

#appends random integers to an array for use within the algorithm for the first key
while [ "$num" != "$e" ]
do
    #echo $num
    #echo "${numSub[@]}"
    #echo ${startKey:$num:$num2}
    numSub+=$((SRANDOM))
    num=$((num+1))
done

#resets num variable for second loop
num=0

#same as other loop but for second key
while [ "$num" != "$d" ]
do
    #echo $num
    #echo "${numSub1[@]}"
    #echo ${endKey:$num:$num2}
    numSub1+=$((SRANDOM))
    num=$((num+1))
done

#exports variables into ares.sh and runs ares.sh
export numSub
export numSub1
export startKey
export endKey
./ares.sh
