#lab6 - if elif else conditions

#!/bin/bash

INSTALLDIR=/var/lib/finbook

if [[ -z $INSTALLDIR ]]; then
#check if empty -z?	
	echo "Path INSTALLDIR can not be empty. Abort installation!"
	exit 101;
fi

if [[ -d  $INSTALLDIR ]] 
#check if dr exist -d?
then 
	echo "Directory $INSTALLDIR already exist. Nothing to do"
elif [[ -e $INSTALLDIR ]]
#check if something with $INSTALLDIR path exist -e?
then
       	echo "Path $INSTALLDIR already exist, but it's not directory. Abort installation."
	exit 100
else
        echo "Creating $INSTALLDIR directory..."
        mkdir $INSTALLDIR
	echo "Already done."
fi

exit 0

