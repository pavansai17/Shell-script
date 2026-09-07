#! /bin/bash

#Checking greatest among three numbers

read -p "Enter a value: " a
read -p "Enter b value: " b
read -p "Enter c value: " c
if [ $a -gt $b -a $a -gt $c ]
then
	echo "$a is greater than $b and $c"
elif [ $b -gt $a -a $b -gt $c ]
then
	echo "$b is greater than $a and $c"
else
	echo "$c is grater than $a and $b"
fi

