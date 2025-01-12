# lab 12.2 - recursive function()

#!/bin/bash

function display_dir(){
	local DIR_FILE=$1
	local LEVEL=$2
	
	#odstapienie miejsca dla katalogow i podkatalogow za pomoca ". "
	for ((n=0; n<$LEVEL; n++)); do
		echo -n '. '
	done	

	if [[ -f $DIR_FILE ]]; then
		echo "FILE $DIR_FILE"
	elif [[ -d $DIR_FILE ]]; then
		echo "DIR $DIR_FILE"
		LEVEL=$(( $LEVEL + 1 ))

		for s in $(ls $DIR_FILE); do
			display_dir $DIR_FILE/$s $LEVEL
		done
	fi
}

display_dir /home/dkalinichenko 0
