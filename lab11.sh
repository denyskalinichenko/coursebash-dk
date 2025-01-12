# lab 11 - using function()

#!/bin/bash

function is_weekend(){
	WEEK_DAY=$(date +%A)

	if [[ $WEEK_DAY == 'Sunday' || $WEEK_DAY == 'Saturday' ]]; then
		echo "It is a weekend! It's $WEEK_DAY."
		return 0
	else
		echo "It's NOW weekend. Sad smile here :(..."
		return 1
	fi
}

#if is_weekend; then
#	echo "Cool! It's weekend. It's $WEEK_DAY."
#else
#	echo "Work day :("
#fi

MESSAGE=$(is_weekend)

echo "The result is: $MESSAGE"
