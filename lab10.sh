# lab 10 - using CASE instruction
# Work with reports

#!/bin/bash

MAKE_REPORT='N'
DELETE_REPORT='N'
FILE=''

while [[ $# -gt 0 ]]; do
	case $1 in 

	-r|--report)
		echo "-r report will be created"
		MAKE_REPORT='Y'
		shift
		;;
	
	-d|--delete)
		echo "-d report will be deleted"
		DELETE_REPORT='Y'
		shift
		;;
	
	-h|--help)
		echo "USAGE: $0 [-r|--report] [-d|--delete] [-f|--file <file_path>]"
		exit 0
		;;

	-f|--file)
		echo "-f report will be saved in the file $2"
		FILE=$2
		shift
		shift
		;;

	*)
		echo "Uknown option! Use $0 -h to display help"
		exit 1
		;;

	esac

done

[[ -z $FILE ]] && echo "File parametr value is missing..." && exit 1

if [[ $DELETE_REPORT == 'Y' && -f $FILE ]]; then
	echo "Removing file $FILE"
	rm $FILE || exit 1
fi

if [[ $MAKE_REPORT == 'Y' ]]; then
	echo "Generating report in $FILE"
	df >> $FILE || exit 1
fi

exit 0
