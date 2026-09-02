#! /bin/bash

read -p "Enter a vlaue:" a
read -p "Enter b value:" b

# Using Greater than operator (-gt)
if [ $a -gt $b ]
then
	echo "$a is greater than $b"
else
	echo "$b is greater than $a"
fi

# Using Less than Operator (-lt)
if [ $a -lt $b ]
then 
	echo "$a is less than $b"
else
	echo "$b is less than $a"
fi

# Using Greater than or equals to (-ge)
if [ $a -ge $b ]
then
	echo "$a may be greater than or equals to $b"
else
	echo "$b may be greater than or equals to $a"
fi

#Similar to these we can also use operators like (-le,==,!=)
