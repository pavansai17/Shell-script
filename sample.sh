#! /bin/bash

read -p "Enter a value" a
read -p "Enter b value" b
res=$((a+b))
bus=$((a-b))
boss=$((a*b))
echo "Result of a+b are $res"
echo "Subtraction of a and b are $bus"
echo "Multiplication of and b are $boss"
mod=$((a%b))
echo "Modulus division of a and b are $mod"
bos=$((a+1))
echo "Increment of $a is $bos"
bosss=$((b-1))
echo "Decrement of $b is $bosss"

