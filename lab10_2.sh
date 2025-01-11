# lab 10 - using CASE instruction with GETOPTS
# Work with reports using "getopts"

#!/bin/bash

MAKE_REPORT='N'
DELETE_REPORT='N'
FILE=''

while getopts ":rdhf:" opt; do
	case $opt in 

	r)
		echo "-r report will be created"
		MAKE_REPORT='Y'
		;;
	
	d)
		echo "-d report will be deleted"
		DELETE_REPORT='Y'
		;;
	
	h)
		echo "USAGE: $0 [-r] [-d] [-f <file_path>]"
		exit 0
		;;

	f)
		echo "-f report will be saved in the file $2"
		[[ $OPTARG = -* ]] && echo "Option $opt requires argument, but $OPTARG was supplied!" >&2 && exit 1
		FILE=$OPTARG
		;;

	*)
		echo "Uknown option! Use $0 -h to display help" >&2
		exit 1
		;;

	esac
done

shift $((OPTIND - 1))

[[ -z $FILE ]] && echo "File parametr value is missing..." >&2 && exit 1

if [[ $DELETE_REPORT == 'Y' && -f $FILE ]]; then
	echo "Removing file $FILE"
	rm $FILE || exit 1
fi

if [[ $MAKE_REPORT == 'Y' ]]; then
	echo "Generating report in $FILE"
	sleep 1
	echo ""
	df >> $FILE || exit 1
	sleep 1
	echo "Your raport:"
	cat $FILE
fi

exit 0

