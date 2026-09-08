#! /bin/bash
url="www.google.com"
if ping -c 1 $url &>/dev/null
then
	echo "$url has network connection"
else
	echo "$url has no network connection"
fi

