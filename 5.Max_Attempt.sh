#! /bin/bash
attempts=1
while [ $attempts -le 3 ]
do 
	read -p "Enter the password" pass
	if [ "$pass" == "Pa1sai_17" ]
   	then 
		echo "Login successful"
                break
	else
		if [ $attempts == 3 ]
		then 
			echo "Wrong password,max attempts reached"
		else
			echo "Wrong password,try again"
		fi
	fi
	attemps=$((attempts+1))
done

