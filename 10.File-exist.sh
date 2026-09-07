#! /bin/bash

#Checking if file exists or not
read -p "Enter the file name: " b
a=$(sudo find /home/vagrant -type f -name $b)
if [ -f "$a" ] && [ -n "$a" ]
then 
	echo "$b file exists"
else
	echo "$b file doesn't exist so creating it!!"
	touch /home/vagrant/"$b"
fi
