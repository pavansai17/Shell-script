#! /bin/bash
if id $1 &>/dev/null
then 
	echo "$1 user exists"
else 
	sudo useradd -m -s /bin/bash $1 &>/dev/null
	sudo passwd $1
	echo "You have fuckin created user successfully"
fi

