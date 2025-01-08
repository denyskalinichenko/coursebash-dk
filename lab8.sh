# lab 8 - while loop
# Example 1 - create directories for each months and days for year 2030:

#!/bin/bash

YEAR=2030
MONTHS=12
DAYS=31
BASE_DIR=/tmp

m=1

while [[ $m -le $MONTHS ]]; do
	d=1
	while [[ $d -le $DAYS ]]; do
	DIR="$BASE_DIR/$YEAR/$m/$d"
	echo $DIR
	mkdir -p $DIR
	
	d=$((d+1))
	
done
	m=$((m+1))
done



#Example 2 - show "." until file "/tmp/tests.txt" will exist

FILE=/tmp/tests.txt

while true; do
	echo '.'
	sleep 1

	if [[ -f $FILE ]]; then
		echo "File $FILE already exists."
		break
	fi

done
