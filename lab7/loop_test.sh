#lab 7 - for loop simple xamples

#!/bin/bash

#1 - Test servers for availbale
echo "Example 1:"

for server in $(cat ./servers.txt); do
	ping -c 1 $server > /dev/null 2>&1

	if [[ $? -eq 0 ]]; then
		echo "$server is available."
	else 
		echo "$server is NOT available"
	fi
done
echo " " 

#2 - Change extension of files
echo "Example 2:"
echo "Changing files with extensions .txt to .csv"

for file in files/*.txt; do
	if [ ! -f $file ]; then
		echo "Files with extension .txt don't exist."
	else
	echo "Changing extensions of $file to:"
	echo ${file%.txt}.csv
	mv "$file" "${file%.txt}.csv"
	fi

done
echo " "

#3 - Create folders with week days
echo "Example 3:"

DAYS="Mon Tue Wed Thu Fri Sat Sun"
i=0

for day in $DAYS; do
	CATALOG="$((++i))-$day"
	echo "Creating catalog $CATALOG"
	mkdir $CATALOG
done
echo " " 

