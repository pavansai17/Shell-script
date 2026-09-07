#! /bin/bash

#1.Basic usage of if-else block

a=10
b=20
if [ $a -gt $b ]
then
	echo "$a greater than $b"
else 
	echo "$a is less than $b"
fi


#2.Checking if both strings are equal or not

fat="Romance"
fit="romance"
if [ "$fat" == "$fit" ]
then
	echo "Both are equal"
else
	echo "Both are not equal"
fi

#3.Checking if string is empty or not

a=""
if [ -z $a ]
then 
	echo "$a is empty"
else
	echo "$a is not empty"
fi


