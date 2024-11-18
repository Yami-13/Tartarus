#!/bin/bash

#Establishes encryption algorithm and encrypts system.
#Uses variables from Apollo and Ares during algorithm.
numSub=$numSub
numSub1=$numSub1
startKey=$startKey
endKey=$endKey

#Game variable established
game=0

#Declares arrays used for scrambling names.
declare -a Alpha
declare -a Beta
declare -a Charlie
declare -a Delta

#Assigns values to arrays.
Alpha=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z')
Beta=('A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z')
Charlie=('1' '2' '3' '4' '5' '6' '7' '8' '9' '0')
Delta=('!' '@' '#' '$' '%' '^' '&' '*' '(' ')')

#Variables to hold commands (WIP)
Echo=

#Exports Variables to next step
export numSub
export numSub1
export startKey
export endKey
export game
export Alpha
export Beta
export Charlie
export Delta
./tartarus.sh
