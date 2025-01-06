#lab 7 - for loop simple xamples

#!/bin/bash

#1
echo "Example 1:"
for server in $(cat servers.txt); do
	echo $server
done
echo " " 

#2
echo "Example 2:"
for file in files/*.txt; do
	echo $file
done
echo " "

#3
echo "Example 3:"
DAYS="Mon Tue Wed Thu Fri Sat Sun"
for day in $DAYS; do
	echo $day
done
echo " " 

