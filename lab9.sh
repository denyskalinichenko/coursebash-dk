# lab 9 - working with arrays[] 
# Give names of users then create them

#!/bin/bash

USERS=()
NAME=''

while [[ $NAME != 'exit' ]]; do
	read -p 'Enter username or type 'exit' to finish: ' NAME

	if [[ $NAME != 'exit' ]]; then
		USERS+=($NAME)
	
	fi
done

echo "Users will created: ${USERS[@]}"

for NAME in ${USERS[@]}; do
	echo "Creating user $NAME..."
	useradd $NAME
done

exit 0

