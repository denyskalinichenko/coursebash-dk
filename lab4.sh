#lab 4 - przemiesznie plikow z monitoringu do archiwum


#Przygotowanie katalogow i plikow

mkdir /tmp/ftp_data
mkdir /tmp/monitor_arch

touch /tmp/ftp_data/file3.txt
touch /tmp/ftp_data/file4.txt


#!/bin/bash

#Dzialania skryptu

INPUT_DIR=/tmp/ftp_data
OUTPUT_DIR=/tmp/monitor_arch

logger "Starting moving files from $INPUT_DIR to $OUTPUT_DIR"
echo "Starting moving files from $INPUT_DIR to $OUTPUT_DIR"

mv $INPUT_DIR/* $OUTPUT_DIR

echo "Done!"
logger "Moving files from $INPUT_DIR to $OUTPUT_DIR finished"

exit 0




